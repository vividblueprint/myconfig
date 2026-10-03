#!/bin/bash

alias set_up_monitor='xrandr --output DP-2 --mode 2560x1440 --pos 0x1440 --output HDMI-0 --mode 1920x1080 --scale-from 2560x1440 --pos 0x0 --primary'
alias set_down_monitor='xrandr --output DP-2 --mode 2560x1440 --pos 0x0 --output HDMI-0 --mode 1920x1080 --scale-from 2560x1440 --pos 0x1440 --primary'
alias set_normal_monitor='xrandr --output HDMI-0 --mode 1920x1080 --scale 1x1'
