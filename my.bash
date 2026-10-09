#!/bin/bash

# ////////////////| Variables |////////////////

MY_CFG_DIR="$HOME/playground/myconfig"
VAR_DIR="$MY_CFG_DIR/variables/var_dir.bash"

# ////////////////| Include  Variable Directories |////////////////

source "$MY_CFG_DIR/variables/var_info.bash"
source "$MY_CFG_DIR/variables/var_color.bash"


if [[ -f "$VAR_DIR" ]]; then
    source "$VAR_DIR"
fi

# ////////////////| source bash |////////////////

source "$MY_CFG_DIR/bash.bash"
source "$MY_CFG_DIR/conda.bash"
source "$MY_CFG_DIR/cp.bash"
source "$MY_CFG_DIR/dir.bash"
source "$MY_CFG_DIR/docker.bash"
source "$MY_CFG_DIR/esp32.bash"
source "$MY_CFG_DIR/ethercat.bash"
source "$MY_CFG_DIR/git.bash"
source "$MY_CFG_DIR/info.bash"
source "$MY_CFG_DIR/isaaclab.bash"
source "$MY_CFG_DIR/monitor.bash"
source "$MY_CFG_DIR/nvidia.bash"
source "$MY_CFG_DIR/robot.bash"
source "$MY_CFG_DIR/ros.bash"
source "$MY_CFG_DIR/ssd.bash"
source "$MY_CFG_DIR/system.bash"
source "$MY_CFG_DIR/uv.bash"

# /////////////////| End |////////////////
