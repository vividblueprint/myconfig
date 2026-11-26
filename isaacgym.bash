#!/bin/bash

# ////////////////| IsaacGym |////////////////

# export LD_LIBRARY_PATH="$(python -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))'):${LD_LIBRARY_PATH:-}"

gym() {
    source "$ISAAC_GYM_ENV/.venv/bin/activate"
    
    export __NV_PRIME_RENDER_OFFLOAD=1
    export __VK_LAYER_NV_optimus=NVIDIA_only
}

# ////////////////| End |////////////////
