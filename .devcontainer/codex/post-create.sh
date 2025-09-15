#!/usr/bin/env bash
# Purpose: Codex Cloud setup (one-time).
# Why: Codex Cloud is configured in the web UI; this script lets you reference a single repo file as the setup entrypoint.
# Use as the Setup/Init entrypoint in the Codex Cloud UI:
#   bash ./.devcontainer/codex/post-create.sh
# Notes:
# - Codex Cloud does not read devcontainer.json; this script only runs if you point the web app at it.
# - Everything is best‑effort; failures should not break the container permanently.
set -euo pipefail
say() { echo "[codex:post-create] $*"; }

# Ensure curl exists
if ! command -v curl >/dev/null 2>&1; then
  say "curl not found; cannot bootstrap juliaup/uv"
else
  # Julia via juliaup (1.11 default)
  if ! command -v julia >/dev/null 2>&1; then
    say "Installing juliaup + Julia 1.11"
    curl -fsSL https://install.julialang.org | sh -s -- -y || true
    "$HOME/.juliaup/bin/juliaup" add 1.11 || true
    "$HOME/.juliaup/bin/juliaup" default 1.11 || true
  fi

  # uv (Python toolchain)
  if ! command -v uv >/dev/null 2>&1; then
    say "Installing uv"
    curl -LsSf https://astral.sh/uv/install.sh | sh || true
  fi
fi

# codex-cli (requires npm/node available in image)
if command -v npm >/dev/null 2>&1; then
  say "Installing latest @openai/codex-cli"
  npm i -g @openai/codex-cli || true
else
  say "npm not found; skipping codex-cli install"
fi

say "Codex setup complete"
