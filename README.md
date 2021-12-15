# gan-gen

Tool used to create Raspberry Pi OS images intended to be run on Raspberry Pi Zero machines with attached temperature sensors.

[`gan`](https://github.com/ibz/gan) will be used to actually perform the sensor readings while [`stasi`](https://github.com/ibz/stasi) will be used to centralize readings from multiple sensors and generate graphs.

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
