#!/usr/bin/env bash

if [ ! -z "$@" ]; then
  wallpaper=~/Pictures/"$@"
  wplink=~/Pictures/current-wallpaper
  feh --bg-fill $wallpaper
  [ -f $wplink ] && rm $wplink
  ln -s $wallpaper $wplink
  exit 0;
else
  echo -ne "\0prompt\x1fWallpaper\n"
fi

for i in $(ls ~/Pictures/*.{jp{,e}g,png} 2> /dev/null ); do
  file=$(basename $i)
  echo -ne "$file\0icon\x1f$i\n"
  let index=$index+1
done
