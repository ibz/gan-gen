#!/bin/bash -e

pip3 install pimoroni-bme280 smbus

git clone https://github.com/ibz/gan.git /home/gan/gan

echo "0 12 * * * journalctl --vacuum-size=10M" > /etc/cron.d/clean-journal
chmod 0644 /etc/cron.d/clean-journal && crontab /etc/cron.d/clean-journal

