#!/bin/bash

# exit 0

vendor=$(get-edid -i -q -b 3 | xxd -s +8 -l 2 -ps)

if [[ $vendor == "05e3" ]]; then
  xrandr --newmode "1720x1440_60.00"  209.75  1720 1848 2032 2344  1440 1443 1453 1493 -hsync +vsync

  xrandr --addmode HDMI2 1720x1440_60.00
  xrandr --addmode DP1 1720x1440_60.00

  xrandr --output HDMI2 --mode 1720x1440_60.00 --pos 0x0
  xrandr --output DP1 --mode 1720x1440_60.00 --pos 1720x0

  xrandr --setmonitor vHDMI auto HDMI2,DP1

  xrandr --output eDP1 --mode 1920x1080 --pos 3440x0
fi

