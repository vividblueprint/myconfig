#!/bin/bash

# ////////////////| Print System Information |////////////////

printf "${bg_bg_blueack}   ${bg_reset}${bg_transparent}%-14s${bg_bg_blueack} %-37s ${bg_reset}\n" "Today is:" "$(date)"
printf "${bg_yellow}   ${bg_reset}${bg_transparent}%-14s${bg_yellow} %-37s ${bg_reset}\n" "HOST:" "${HOST} / $(uname -m)"
printf "${bg_red}   ${bg_reset}${bg_transparent}%-14s${bg_red} %-37s ${bg_reset}\n" "IPv4:" "${IP:-Not connected}"
printf "${bg_blue}   ${bg_reset}${bg_transparent}%-14s${bg_blue} %-39s ${bg_reset}\n" "TEMP:" "${CPU_TEMP} (CPU) / ${GPU_TEMP} (GPU)"
printf "${bg_megenta}   ${bg_reset}${bg_transparent}%-14s${bg_megenta} %-37s ${bg_reset}\n" "ROS 2:" "${ROS_DISTRO_NAME:-N/A}"
printf "${bg_cyan}   ${bg_reset}${bg_transparent}%-14s${bg_cyan} %-37s ${bg_reset}\n" "HOSTNAME:" "$(hostname)"
printf "${bg_red}   ${bg_reset}${bg_transparent}%-14s${bg_red} %-37s ${bg_reset}\n" "UP TIME:" "$(uptime -p)"
printf "\n"
printf "${bg_bg_blueack}   ${bg_reset}${bg_transparent}%-14s${bg_bg_blueack} %-37s ${bg_reset}\n" "GPU:" "${GPU}"
printf "${bg_yellow}   ${bg_reset}${bg_transparent}%-14s${bg_yellow} %-37s ${bg_reset}\n" "NVIDIA/CUDA:" "${NVIDIA_DRIVER:-N/A} / ${CUDA:-N/A} (CUDA)"
printf "${bg_blue}   ${bg_reset}${bg_transparent}%-14s${bg_blue} %-37s ${bg_reset}\n" "CPU:" "${CPU}"
printf "${bg_megenta}   ${bg_reset}${bg_transparent}%-14s${bg_megenta} %-37s ${bg_reset}\n" "CORES" "$(nproc) (CORES)"
printf "${bg_cyan}   ${bg_reset}${bg_transparent}%-14s${bg_cyan} %-37s ${bg_reset}\n" "RAM/VRAM:" "${RAM} (RAM) / ${GPU_MEMORY} (VRAM)"
printf "${bg_red}   ${bg_reset}${bg_transparent}%-14s${bg_red} %-37s ${bg_reset}\n" "DISK /:" "${ROOT_DISK}"

# ////////////////| End |////////////////
