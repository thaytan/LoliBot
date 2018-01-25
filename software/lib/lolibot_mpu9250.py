# mpu9250.py: version: 2018-01-20 00:45
import struct
import math
import time

from mpu9250.mpu9250 import MPU9250
from mpu9250.imu import MPUException

mpu = None

time_last_check = 0
maxZ = -50.0
minZ = 50.0

def initialise(settings, i2c_bus):
    global mpu

    try:
        mpu = MPU9250(i2c_bus, 0)
        print("MPU9250 initialised")
    except MPUException:
        print("MPU9250 module not detected.")

# FIXME: Replace with general timer implementation
def accel_check():
    global time_last_check, maxZ, minZ

    if mpu is None:
        return

    # Track the max/min accelerometer reading between updates
    # and output them once per second
    curZ = mpu.accel.z
    maxZ = max(curZ, maxZ)
    minZ = min(curZ, minZ)

    time_now = time.ticks_ms()
    if time_now >= time_last_check + 1000:
        time_last_check = time_now
        print ("Accel Z {} min {} max {}".format(curZ, minZ, maxZ))
        print ("Accel {} Gyro {} Mag {} Temperature {} C".format(mpu.accel.xyz, mpu.gyro.xyz, mpu.mag.xyz, mpu.temperature))
        minZ = 50.0
        maxZ = -50.0
