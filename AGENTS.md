# Agent Onboarding

Quickstart (first 3 commands)
- Tooling: open in devcontainer; it installs Node 22, pnpm 9 (via corepack), Julia 1.11 (via juliaup), Python 3.12 + uv, and latest `@openai/codex-cli`.
- Install deps: `make install`
- Run fast tests: `make test`

Command Palette
- Install all: `make install`
- Lint all: `make lint`
- Typecheck all: `make typecheck`
- Test fast: `make test`
- Test all: `make test-all`
- Frontend dev: `pnpm -C math-agent/frontend dev`
- Backend run: `uv -C math-agent/backend run math-agent-runner ./job`
- Julia tests: run in each project dir: `julia --project=. -e 'using Pkg; Pkg.test()'`

Projects (folders)
- `turing-dynamics-julia`: Turing machines and dynamical systems (Julia)
- `viterbo-conjecture-julia`: Symplectic capacities survey/experiments (Julia)
- `circular-partitions-julia`: Polygon partition optimization (Julia)
- `math-agent/backend`: Python+Bash job runner (LLM workflows)
- `math-agent/frontend`: React+TS UI (Vite/Tailwind/Vitest/Storybook)

Environment Detection
- Codespaces: `CODESPACE` is set
- Codex Cloud: `CODEX` is set (configured in web app; devcontainer.json ignored)
- Local: neither is set
- If both are set: error (our scripts exit with a clear message)

Devcontainer Definitions
- Local: `.devcontainer/local/devcontainer.json` (universal:2, mounts under `/home/vscode/*`, local post-create/start scripts)
- Codespaces: `.devcontainer/codespaces/devcontainer.json` (uses platform image, no mounts, codespaces post-create/start scripts)
- Choose the appropriate definition when creating the container/Codespace.

Cache/Auth Locations
- Local: persisted via mounts at standard home paths (`~/.pnpm-store`, `~/.npm`, `~/.julia`, `~/.config/gh`, `~/.codex`, `~/.bash_history_dir`)
- Codespaces: standard home paths; no mounts; may need re-auth/re-download after rebuilds
- Codex Cloud: ephemeral; configure via web app env/secrets and entrypoints

Persistence (.persist) — What and Why
- What: On first container create, we symlink selected home directories into `./.persist/` in the workspace so caches and auth survive rebuilds across environments.
- Included: pnpm store, npm cache, Julia depot, GitHub CLI config, codex-cli config, and shell history. `.persist/` is gitignored.
- Why: A single devcontainer must work in Local and Codespaces with different home users; Docker volume mounts with fixed home paths are brittle across envs. Workspace-relative persistence is portable and predictable for agents.
- Security note: `./.persist/` can contain tokens. It is not committed, but treat your workspace as sensitive (don’t zip/share it). If you prefer Docker volumes for Local instead, we can add them while keeping `.persist` for Codespaces.
- Alternatives considered:
  - Docker volumes in devcontainer.json: stable, but user-path brittle across envs; Codex Cloud ignores devcontainer.json.
  - Do nothing and re-auth every rebuild: poor UX for many agents; increases friction and support load.
  - Secrets manager integration: overkill for this repo’s goals and adds onboarding burden for agents.

Conventions
- Never log secrets. Env only. Do not echo env or use shell `-x`.
- Commit lockfiles: root `pnpm-lock.yaml`, `math-agent/backend/uv.lock`, `*/Manifest.toml` for Julia apps.
- Fast vs slow tests: default CI runs fast only.
- Makefile is for multi-project operations only; per-project commands run in that project.

CI Overview
- `Lint and Typecheck`: runs ESLint/Prettier check, Ruff, Pyright; path-filtered
- `Test`: runs fast tests across projects; path-filtered; caches pnpm store, uv, Julia artifacts

codex-cli Authentication
- Use the official codex-cli authentication instructions. We do not document auth commands here; follow the upstream docs and keep secrets in env.

Troubleshooting
- Check env: `scripts/doctor.sh`
- Codespaces file watchers: our setup script raises limits; reopen folder if needed

Codex Cloud EntryPoints
Configure in the Codex Cloud web app:
- Setup (one-time): `bash ./.devcontainer/codex/post-create.sh`
- Start (every boot): `bash ./.devcontainer/codex/post-start.sh`

Decision Log — Persistence Options Across 3 Environments
- Options considered:
  - Docker volumes (current):
    - Local: ✅ persists between rebuilds; simple.
    - Codespaces: ✅ persists within a codespace; works with both `vscode`/`codespace` users by mounting both targets.
    - Codex Cloud: ❌ ignored (no devcontainer support; environment is ephemeral).
  - Workspace `.persist` symlinks:
    - Local: ✅ works, but redundant with volumes.
    - Codespaces: ⚠️ relies on workspace persistence semantics; less explicit than volumes.
    - Codex Cloud: ❌ ephemeral — no persistence.
  - No persistence:
    - All: ❌ poor UX; re-auth and re-download every time.
- Choice: Two devcontainer definitions. Local uses mounts; Codespaces uses no mounts. Codex Cloud is configured in web app; no devcontainer persistence.

Rationales — Why These Choices
- Single container: reduces cognitive load for agents and keeps onboarding uniform.
- Strict env detection: prevents silent misconfig (Local = neither var; both set → fail fast).
- Mount-based persistence: devcontainer volumes persist caches/auth for Local and Codespaces; predictable and visible. Codex Cloud remains ephemeral.
- Committed lockfiles: ensures determinism and reproducibility across agents and CI.
- Node 22 + pnpm 9: stable, familiar combo; minimizes surprise for senior devs.
- Python uv: fast, deterministic resolver; lowers time-to-first-green for agents.
- Storybook included: needed for rapid UI iteration; excluded from default tests because it’s not a test runner.
- “Never log secrets. Env only.”: simplest effective control; enforced by code style (no `-x`, no `printenv`).
- Makefile limited to multi-project ops: avoids hiding per-project commands behind wrappers.
