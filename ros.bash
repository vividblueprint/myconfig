#!/bin/bash

# ////////////////| ROS2 |////////////////

alias ros='source /opt/ros/jazzy/setup.bash'
alias rosws='source ~/ros2_ws/install/setup.bash'

# Build
alias cb='cd ~/ros2_ws && colcon build --symlink-install'
alias cbp='cd ~/ros2_ws && colcon build --symlink-install --packages-select'
alias cba='cd ~/ros2_ws && colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release'

# Clean build
alias cclean='cd ~/ros2_ws && rm -rf build install log'

# ROS information
alias rn='ros2 node list'
alias rt='ros2 topic list'
alias rs='ros2 service list'
alias ra='ros2 action list'
alias rp='ros2 param list'

alias rtf='ros2 topic hz'
alias rte='ros2 topic echo'
alias rti='ros2 topic info'
alias rni='ros2 node info'
alias rps='ros2 param get'
alias rpl='ros2 param list'

alias rws='cd ~/ros2_ws'
alias rsrc='cd ~/ros2_ws/src'
alias rbuild='cd ~/ros2_ws/build'
alias rinstall='cd ~/ros2_ws/install'
alias rlog='cd ~/ros2_ws/log'

alias robot='cd ~/ros2_ws/src/robot'

# ////////////////| End |////////////////
