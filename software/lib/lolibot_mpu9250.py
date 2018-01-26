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

def calibrate():
    def getmag():                               # Return (x, y, z) tuple (blocking read)
      return imu.mag.xyz
    # Calibrate for 100 ms
    fusion.calibrate(getmag, lambda end=time.ticks_ms() + 100: time.ticks_ms() > end, 1)

def initialise(settings, i2c_bus):
    global imu

    try:
        imu = MPU9250(i2c_bus, 0)
        print("MPU9250 initialised")
        calibrate()
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
        if TimingReport:
            start = time.ticks_us()  # Measure computation time only
        fusion.update(imu.accel.xyz, imu.gyro.xyz, imu.mag.xyz) # Note blocking mag read
        if TimingReport:
            t = time.ticks_diff(time.ticks_us(), start)
            print("Sensor Update time (uS):", t)

    if time_now >= time_last_report + 1000:
        time_last_report = time_now
        print("Heading, Pitch, Roll: {:7.3f} {:7.3f} {:7.3f} Temperature {:2.1f}C".format( \
              fusion.heading, fusion.pitch, fusion.roll, imu.temperature))
