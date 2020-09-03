#!/bin/bash

ls ~/Pictures/*.{png,jpg,jpeg} | feh --filelist - -g 640x480 --scale-down --zoom fill --slideshow-delay 20
