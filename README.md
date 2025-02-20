# gan-gen

`gan-gen` is a tool used to create Raspberry Pi OS images intended to be run on Raspberry Pi Zero machines with attached temperature sensors running [`gan`](https://github.com/ibz/gan). They will be used to perform the sensor readings while [`stasi`](https://github.com/ibz/stasi) will be used to centralize readings from multiple sensors and generate graphs.

One goal of `gan-gen` is to keep the image as tiny as possible, so an old 2GB SD card that you have around and is useless for a modern camera is enough for a Raspberry Pi Zero-based temperature sensor. There is absolutely no reason to use a large SD card for this job, which requires very little storage even over long periods of time!

Anything non-essential is stripped and a `cron` job cleans the `systemd` journal every day.

## Config

Upon execution, `build.sh` will source the file `user-config` in the current
working directory.  This bash shell fragment is intended to set needed
environment variables.

The following environment variables are required:

 * `TARGET_HOSTNAME`

 * `TIMEZONE_DEFAULT`

 * `WPA_ESSID`, `WPA_PASSWORD` and `WPA_COUNTRY`

## How the build process works

For more information, please refer to [`pi-gen`](https://github.com/RPi-Distro/pi-gen#readme), which `gan-gen` is based on!
