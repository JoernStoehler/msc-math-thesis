# Agents — Backend

Commands
- Install: `uv sync`
- Lint: `uvx ruff check .`
- Typecheck: `uvx pyright`
- Test (fast): `uv run pytest -q -m 'not slow'`
- Test (all): `uv run pytest -q`
- Run job: `uv run math-agent-runner ./job`

Conventions
- Never log secrets. Env only.
- Keep logs controlled; no `-x`, no `printenv`.

Why
- uv: fast dependency resolution and reproducible lockfile for agents and CI.
- argparse (no extra deps): keeps the runner minimal for glue tasks.
- Logs are whitelisted messages: prevents accidental secret leakage.
