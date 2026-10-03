#!/bin/bash

# ////////////////| System Information Variables |////////////////

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

# ////////////////| End |////////////////
