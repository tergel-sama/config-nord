#!/bin/bash

# this script was submitted to me via email (by vov4ikpa) with the following instructions:

# 1. In Autostart menu and add the script.
# 2. Enter "configure desktop" and choose slide show
# 3. Add the directory (/tmp/wallpaper) the script is using to generate wallpapers.

i=1
while [ true ]
do
	pscircle \
	--root-pid=1 \
	--collapse-threads=true \
	--tree-sector-angle=3.1415 \
	--tree-rotate=true \
	--tree-rotation-angle=1.5708 \
	--tree-center=-950:0 \
	--cpulist-center=300:0 \
	--memlist-center=800:0 \
	--background-color=1e2226 \
	--link-color-min=375143a0 \
	--link-color-max=375143 \
	--dot-color-min=7c762f \
	--dot-color-max=b56e46 \
	--tree-font-size=18 \
	--tree-font-color=94bfd1 \
	--toplists-row-height=35 \
	--toplists-font-size=24 \
	--toplists-font-color=C8D2D7 \
	--toplists-pid-font-color=7B9098 \
	--toplists-bar-height=7 \
	--toplists-bar-background=444444 \
	--toplists-bar-color=7d54dd \
	--max-children=10 \
	--output-width=1920 \
	--output-height=1080 \
	--tree-radius-increment=90 \
	--dot-radius=3 \
	--link-width=1.3 \
	--tree-font-size=10 \
	--toplists-font-size=11 \
	--toplists-bar-width=30 \
	--toplists-row-height=15 \
	--toplists-bar-height=3 \
	--cpulist-center=400.0:-80.0 \
	--memlist-center=400.0:80.0 \
	--output=/tmp/wall${i}.png

	feh --bg-max /tmp/wall${i}.png
	i=$(( ${i}*-1 ))
	sleep 10
done

