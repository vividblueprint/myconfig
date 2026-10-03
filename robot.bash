#!/bin/bash

# Robot Info
alias psrobot='ps aux | grep -E "ros|isaac|python|controller"'

robotinfo() {
    echo "========== SYSTEM =========="
    echo "Kernel: $(uname -r)"
    echo "Ubuntu: $(lsb_release -ds 2>/dev/null)"
    echo
    echo "========== GPU =========="
    nvidia-smi --query-gpu=name,driver_version,memory.total --format=csv,noheader
    echo
    echo "========== CUDA =========="
    nvcc --version 2>/dev/null | tail -1
    echo
    echo "========== ROS =========="
    printenv ROS_DISTRO
    echo
    echo "========== PYTHON =========="
    python --version
    echo
    echo "========== UV =========="
    uv --version 2>/dev/null
}
