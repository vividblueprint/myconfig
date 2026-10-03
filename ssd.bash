#!/bin/bash

# Disk / SSD
alias dfh='df -h'
alias duh='du -h --max-depth=1'
alias lsblkf='lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINTS,MODEL'

alias irq='cat /proc/interrupts'
alias cpuf='lscpu'
alias mem='free -h'
alias disk='lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS'