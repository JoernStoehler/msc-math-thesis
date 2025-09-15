# Monorepo orchestration only — not a per-project command wrapper.
# Why: keep per-project workflows discoverable; use Make only when touching multiple projects.

.PHONY: help install lint typecheck test test-all clean

help:
	@echo "Targets:"
	@echo "  install    Install deps across all projects"
	@echo "  lint       Lint frontend + backend"
	@echo "  typecheck  Typecheck frontend + backend"
	@echo "  test       Run fast tests across all projects"
	@echo "  test-all   Run all tests (incl. slow) across projects"
	@echo "  clean      Remove caches and build artifacts"

install:
	# Frontend deps (root lockfile)
	cd math-agent/frontend && pnpm i
	# Backend deps via uv
	cd math-agent/backend && uv lock && uv sync --frozen
	# Julia deps
	julia --project=turing-dynamics-julia -e 'using Pkg; Pkg.instantiate()'
	julia --project=viterbo-conjecture-julia -e 'using Pkg; Pkg.instantiate()'
	julia --project=circular-partitions-julia -e 'using Pkg; Pkg.instantiate()'

lint:
	# Backend: ruff
	cd math-agent/backend && uvx ruff check .
	# Frontend: eslint
	cd math-agent/frontend && pnpm lint

typecheck:
	# Backend: pyright
	cd math-agent/backend && uvx pyright
	# Frontend: tsc
	cd math-agent/frontend && pnpm exec tsc --noEmit

test:
	cd math-agent/backend && uv run pytest -q -m 'not slow'
	cd math-agent/frontend && pnpm test
	julia --project=turing-dynamics-julia -e 'using Pkg; Pkg.test()'
	julia --project=viterbo-conjecture-julia -e 'using Pkg; Pkg.test()'
	julia --project=circular-partitions-julia -e 'using Pkg; Pkg.test()'

test-all:
	cd math-agent/backend && uv run pytest -q
	cd math-agent/frontend && pnpm test
	julia --project=turing-dynamics-julia -e 'using Pkg; Pkg.test()'
	julia --project=viterbo-conjecture-julia -e 'using Pkg; Pkg.test()'
	julia --project=circular-partitions-julia -e 'using Pkg; Pkg.test()'

clean:
	rm -rf math-agent/frontend/node_modules math-agent/frontend/dist
	rm -rf math-agent/backend/.venv math-agent/backend/.pytest_cache
	find . -name "__pycache__" -type d -prune -exec rm -rf {} +
	find . -name "*.pyc" -delete
