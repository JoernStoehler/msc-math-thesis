#!/usr/bin/env bash
# Purpose: Codex Cloud maintenance (on every start).
# Why: keep PATH correct when Codex Cloud invokes the start entrypoint.
# Use as the Start entrypoint in the Codex Cloud UI:
#   bash ./.devcontainer/codex/post-start.sh
set -euo pipefail
say() { echo "[codex:post-start] $*"; }

# Ensure juliaup on PATH if installed
if [ -d "$HOME/.juliaup/bin" ]; then
  export PATH="$HOME/.juliaup/bin:$PATH"
fi

say "Codex start complete"
