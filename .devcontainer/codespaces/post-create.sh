#!/usr/bin/env bash
# Purpose: one-time setup for Codespaces.
# Why: keep boot fast on the platform image; pin pnpm; install essentials.
set -euo pipefail
say() { echo "[codespaces post-create] $*"; }

# Corepack + pnpm@9 (Codespaces already ships Node, but pinning is safe)
if command -v corepack >/dev/null 2>&1; then
  say "Enable corepack; pin pnpm@9"
  corepack enable || true
  corepack prepare pnpm@9.12.3 --activate || true
fi

# Julia via juliaup
if ! command -v julia >/dev/null 2>&1; then
  say "Install juliaup + Julia 1.11"
  curl -fsSL https://install.julialang.org | sh -s -- -y || true
  "$HOME/.juliaup/bin/juliaup" add 1.11 || true
  "$HOME/.juliaup/bin/juliaup" default 1.11 || true
  if ! grep -Fq "~/.juliaup/bin" "$HOME/.bashrc" 2>/dev/null; then
    echo 'export PATH="$HOME/.juliaup/bin:$PATH"' >> "$HOME/.bashrc"
  fi
fi

# uv for Python
if ! command -v uv >/dev/null 2>&1; then
  say "Install uv"
  curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Latest codex-cli
say "Install @openai/codex-cli"
npm i -g @openai/codex-cli || true

say "Codespaces post-create done. Next: make install && make test"
