#!/usr/bin/env bash
set -euo pipefail

say() { echo "[doctor] $*"; }

# Env detection
if [[ -n "${CODESPACE:-}" && -n "${CODEX:-}" ]]; then
  say "ERROR: Both CODESPACE and CODEX set"; exit 1
fi
if [[ -n "${CODESPACE:-}" ]]; then ENV=Codespaces; elif [[ -n "${CODEX:-}" ]]; then ENV=Codex-Cloud; else ENV=Local; fi
say "Environment: $ENV"
say "User: $(id -un)  HOME: $HOME"

# Tools
for cmd in node pnpm python3 uv julia npm; do
  if command -v "$cmd" >/dev/null 2>&1; then
    say "$cmd: $($cmd --version 2>/dev/null | head -n1)"
  else
    say "$cmd: MISSING"
  fi
done

# Caches
say "PNPM_STORE_PATH: ${PNPM_STORE_PATH:-unset}"
say "Julia depot: ${JULIA_DEPOT_PATH:-$HOME/.julia}"

# Check common cache dirs
for d in "$HOME/.pnpm-store" "$HOME/.npm" "$HOME/.julia" "$HOME/.config/gh" "$HOME/.codex"; do
  if [ -d "$d" ]; then say "exists: $d"; else say "missing: $d"; fi
done

# Lockfiles present
for f in pnpm-lock.yaml math-agent/backend/uv.lock turing-dynamics-julia/Manifest.toml viterbo-conjecture-julia/Manifest.toml circular-partitions-julia/Manifest.toml; do
  if [[ -f "$f" ]]; then say "found: $f"; else say "missing: $f"; fi
done

say "OK"
