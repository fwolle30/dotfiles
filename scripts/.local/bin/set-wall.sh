#!/usr/bin/env bash

wallpaper=$@
wplink=~/Pictures/current-wallpaper

feh --bg-fill $wallpaper
[ -f $wplink ] && rm $wplink
ln -s $wallpaper $wplink