#!/usr/bin/env bash
# Purpose: quick tweaks on every start for Local Dev Containers.
# Why: avoid heavy work; ensure PATH/history are correct.
set -euo pipefail
say() { echo "[local post-start] $*"; }

# Ensure juliaup on PATH each start
if [ -d "$HOME/.juliaup/bin" ]; then
  export PATH="$HOME/.juliaup/bin:$PATH"
fi

# Bash history file in mounted dir if present
if [ -d "$HOME/.bash_history_dir" ]; then
  export HISTFILE="$HOME/.bash_history_dir/.bash_history"
fi

say "Local environment ready"
