#!/bin/bash

# Check if the lines already exist in .bashrc to avoid duplication
if ! grep -Fxq "source ~/myconfig/my.bash" ~/.bashrc; then
    echo "source ~/myconfig/my.bash" >> ~/.bashrc
fi

source ~/.bashrc

echo "Bash has been set successfully!"

