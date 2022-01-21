#!/bin/bash -e

pip3 install pimoroni-bme280 smbus

git clone https://github.com/ibz/gan.git ${ROOTFS_DIR}/home/gan/gan

echo "0 12 * * * journalctl --vacuum-size=10M" > ${ROOTFS_DIR}/etc/cron.d/clean-journal
chmod 0644 ${ROOTFS_DIR}/etc/cron.d/clean-journal && crontab ${ROOTFS_DIR}/etc/cron.d/clean-journal

