#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-6'

## Run
rofi \
  -modi clipboard:~/.config/hypr/scripts/cliphist-rofi-img.sh -show clipboard -show-icons -theme ${dir}/${theme}.rasi
