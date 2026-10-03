#!/bin/bash

# ////////////////| Include Diractory Variables |////////////////

VAR_DIR="$HOME/myconfig/variables/var_dir.bash"

if [[ -f "$VAR_DIR" ]]; then
    source "$VAR_DIR"
fi

# ////////////////| Directorys |////////////////

alias localdisk='cd "$LOCALDISK"'
alias uni_books='cd "$UNIVERSITY_BOOKS"'
alias obsidian_notes='cd "$OBSIDIAN_NOTES"'
alias linux_tools='cd "$LINUX_TOOLS"'
alias mycfg='cd "$MYCONFIG"'
alias pg_win='cd "$PLAYGROUND_WIN"'
alias pg_linux='cd "$PLAYGROUND_LINUX"' 

# ////////////////| End |////////////////