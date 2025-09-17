#!/usr/bin/env bash
# Purpose: quick tweaks on every start in Codespaces.
# Why: raise file watchers, ensure juliaup PATH only; no mounts.
set -euo pipefail
say() { echo "[codespaces post-start] $*"; }

# Ensure juliaup on PATH each start
if [ -d "$HOME/.juliaup/bin" ]; then
  export PATH="$HOME/.juliaup/bin:$PATH"
fi

# File watchers for large repos
sysctl fs.inotify.max_user_watches=524288 >/dev/null 2>&1 || true
sysctl fs.inotify.max_user_instances=1024 >/dev/null 2>&1 || true

say "Codespaces environment ready"
