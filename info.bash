#!/bin/bash

CUDA="$(nvcc --version | awk -F'release ' '/release/ {split($2,a,","); print a[1]}')"
GPU="$(nvidia-smi --query-gpu=name --format=csv,noheader 2>/dev/null | head -n1)"
NVIDIA_DRIVER="$(nvidia-smi --query-gpu=driver_version --format=csv,noheader 2>/dev/null | head -n1)"
GPU_MEMORY="$(nvidia-smi --query-gpu=memory.total --format=csv,noheader 2>/dev/null | head -n1)"
IP="$(ip -4 -o addr show scope global 2>/dev/null | awk 'NR==1 {split($4, a, "/"); print a[1]}')"
CPU="$(lscpu | awk -F: '/Model name/ {gsub(/^[ \t]+/, "", $2); print $2; exit}')"
RAM="$(free -h | awk '/^Mem:/ {print $3 " / " $2}')"
ROOT_DISK="$(df -h / | awk 'NR==2 {print $4}') / $(df -h / | awk 'NR==2 {print $3 " / " $2 " (" $5 ")"}')"
HOST="$(. /etc/os-release && echo $VERSION)"
CPU_TEMP="$(sensors | awk '/Package id 0:/ {print $4; exit}' | tr -d '+')"
GPU_TEMP="$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)°C"

# Bash Color
rs='\033[0m'
wt='\033[1;37m'

bk='\e[40;97m'
yl='\e[43;97m'
bl='\e[44;97m'
mg='\e[45;97m'
cy='\e[46;97m'
rd='\e[41;97m'

# Print Info
printf "${bk}   ${rs}${wt}%-14s${bk} %-37s ${rs}\n" "Today is:" "$(date)"
printf "${yl}   ${rs}${wt}%-14s${yl} %-37s ${rs}\n" "HOST:" "${HOST} / $(uname -m)"
# printf "${bl}   ${rs}${wt}%-14s${bl} %-37s ${rs}\n" "IPv4:" "${IP:-Not connected}"
printf "${bl}   ${rs}${wt}%-14s${bl} %-39s ${rs}\n" "TEMP:" "${CPU_TEMP} (CPU) / ${GPU_TEMP} (GPU)"
printf "${mg}   ${rs}${wt}%-14s${mg} %-37s ${rs}\n" "ROS 2:" "$(ros && echo $ROS_DISTRO)"
printf "${cy}   ${rs}${wt}%-14s${cy} %-37s ${rs}\n" "HOSTNAME:" "$(hostname)"
printf "${rd}   ${rs}${wt}%-14s${rd} %-37s ${rs}\n" "UP TIME:" "$(uptime -p)"
printf " \n"
printf "${bk}   ${rs}${wt}%-14s${bk} %-37s ${rs}\n" "GPU:" "${GPU}\n"
printf "${yl}   ${rs}${wt}%-14s${yl} %-37s ${rs}\n" "NVIDIA/CUDA:" "${NVIDIA_DRIVER:-N/A} / ${CUDA:-N/A} (CUDA)"
printf "${bl}   ${rs}${wt}%-14s${bl} %-37s ${rs}\n" "CPU:" "${CPU}"
printf "${mg}   ${rs}${wt}%-14s${mg} %-37s ${rs}\n" "CORES" "$(nproc) (CORES)"
printf "${cy}   ${rs}${wt}%-14s${cy} %-37s ${rs}\n" "RAM/VRAM:" "${RAM} (RAM) / ${GPU_MEMORY} (VRAM)"
printf "${rd}   ${rs}${wt}%-14s${rd} %-37s ${rs}\n" "DISK /:" "${ROOT_DISK}"
