#!/bin/bash
MY_BASH_DIR="$HOME/playground/myconfig/my.bash"
SOURCE_DIR="source $MY_BASH_DIR"
BASHRC="$HOME/.bashrc"

# ////////////////| Set to Bashrc |////////////////

if [[ ! -f "$MY_BASH_DIR" ]]; then
    echo "Error: my.bash not found!"
    exit 1
fi

if ! grep -Fxq "$SOURCE_DIR" "$BASHRC"; then
    echo $SOURCE_DIR >> "$BASHRC"
fi

source "$BASHRC"

echo "Bash has been set successfully!"

# ////////////////| End |////////////////
