#!/bin/bash

# ////////////////| ESP32/USB/serial |////////////////

alias usb='lsusb'
alias tty='ls -l /dev/ttyUSB* /dev/ttyACM* 2>/dev/null'
alias serial='ls -l /dev/serial/by-id/'
alias dmesgusb='dmesg --follow'

# ////////////////| End |////////////////
