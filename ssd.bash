#!/bin/bash

# ////////////////| Disk / SSD |////////////////

alias dfh='df -h'
alias duh='du -h --max-depth=1'
alias lsblkf='lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINTS,MODEL'

alias irq='cat /proc/interrupts'
alias cpuf='lscpu'
alias mem='free -h'
alias disk='lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS'

log_nvme() {
    if [[ "$1" != "0" && "$1" != "1" ]]; then
        echo "Usage: log_nvme {0|1}"
        return 1
    fi

    sudo nvme smart-log "/dev/nvme$1"
}

# ////////////////| End |////////////////
