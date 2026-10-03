#!/bin/bash

# Nvidia
alias gpu='nvidia-smi'
alias gpuf='watch -n 1 nvidia-smi'
alias nv='nvidia-smi --query-gpu=name,temperature.gpu,memory.used,memory.total,utilization.gpu --format=csv'
alias cuda='nvcc --version'
