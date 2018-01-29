# mpu9250.py: version: 2018-01-20 00:45
import struct
import math
import time

from mpu9250.mpu9250 import MPU9250
from mpu9250.imu import MPUException
from mpu9250.fusion import Fusion

imu = None
fusion = Fusion()

time_last_check = 0
time_last_report = 0
TimingReport = False

def calibrate(duration = 1000):
    def getmag():                               # Return (x, y, z) tuple (blocking read)
      return imu.mag.xyz
    # Calibrate for 10s
    fusion.calibrate(getmag, lambda end=time.ticks_ms() + duration: time.ticks_ms() > end, 1)

def initialise(settings, i2c_bus):
    global imu

    try:
        imu = MPU9250(i2c_bus, 0)
        calibration_duration = 10000
        print("MPU9250 initialised. ROM scaling {} Starting bias calibration for {} seconds.".format (imu.mag_correction, calibration_duration / 1000.0))
        calibrate(calibration_duration)
        print("MPU9250 Calibration done. Magnetometer Bias {}".format(fusion.magbias))
    except MPUException:
        print("MPU9250 module not detected.")

# FIXME: Replace with general timer implementation
def imu_update():
    global time_last_check, time_last_report

    if imu is None:
        return

    time_now = time.ticks_ms()
    # Update sensors at 50Hz
    if time_now >= time_last_check + 20:
        time_last_check = time_now
        a, g, m = (imu.accel.xyz, imu.gyro.xyz, imu.mag.xyz) # Note blocking mag read
        if TimingReport:
            start = time.ticks_us()  # Measure computation time only
        fusion.update(a, g, m)
        if TimingReport:
            t = time.ticks_diff(time.ticks_us(), start)
            print("Sensor Update time (uS):", t)

        if time_now >= time_last_report + 1000:
            time_last_report = time_now
            ma = (m[0] - fusion.magbias[0], m[1] - fusion.magbias[1], m[2] - fusion.magbias[2])
            print("Accel {} Gyro {} Mag (adjusted) {}".format(a, g, ma))
            print("Heading, Pitch, Roll: {:7.3f} {:7.3f} {:7.3f} Temperature {:2.1f}C".format( \
                  fusion.heading, fusion.pitch, fusion.roll, imu.temperature))
