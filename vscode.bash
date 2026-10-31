#!/bin/bash

# ////////////////| Clear Snap VSCode GTK paths so ROS GUI tools use system libraries |////////////////

if [[ "${GTK_EXE_PREFIX:-}" == /snap/code/* || "${GTK_PATH:-}" == /snap/code/* ]]; then
  unset GTK_PATH GTK_EXE_PREFIX GTK_IM_MODULE_FILE GIO_MODULE_DIR
fi

# ////////////////| End |////////////////
