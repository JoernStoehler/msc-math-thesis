# msc-math-thesis

This repository contains materials and work related to my mathematics M.Sc. thesis.

Projects
- `turing-dynamics-julia`: Turing machines and dynamical systems (Julia)
- `viterbo-conjecture-julia`: Symplectic capacities vs volume (Julia)
- `circular-partitions-julia`: Polygon partition optimization (Julia)
- `math-agent`: LLM automation (backend) and UI (frontend)

Quickstart (in devcontainer)
- Install deps: `make install`
- Run fast tests: `make test`
- Frontend dev: `pnpm -C math-agent/frontend dev`

See `AGENTS.md` for onboarding and environment details. Devcontainer definitions:
- Local: `.devcontainer/local/devcontainer.json`
- Codespaces: `.devcontainer/codespaces/devcontainer.json`
