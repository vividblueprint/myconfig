#!/bin/bash

# ////////////////| Set to ~/.bashrc |////////////////

if ! grep -Fxq "source ~/myconfig/my.bash" ~/.bashrc; then
    echo "source ~/myconfig/my.bash" >> ~/.bashrc
fi

source ~/.bashrc

echo "Bash has been set successfully!"

# ////////////////| End |////////////////
