#!/bin/bash
echo 'KERNEL=="i2c-[0-9]*", GROUP="i2c"' >>  /etc/udev/rules.d/10-local_i2c_group.rules
