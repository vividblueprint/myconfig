#!/bin/bash

unset ISAACSIM_ASSET_ROOT
# export ISAACSIM_ASSET_REGION_PROFILE=china
export ISAACSIM_ASSET_REGION_PROFILE=us

# Isaaclab
alias il='cd ~/playground/IsaacLab'
alias ilt='cd ~/playground/IsaacLabTutorial'
alias iltrain='uv run isaaclab train --rl_library rsl_rl'
alias newton='uv run isaaclab train --rl_library rsl_rl physics=newton_mjwarp'
alias physx='uv run --extra ovphysx isaaclab train --rl_library rsl_rl physics=ovphysx'

ilrun() {
    uv run isaaclab train \
        --rl_library rsl_rl \
        --task "$1" \
        "${@:2}"
}

