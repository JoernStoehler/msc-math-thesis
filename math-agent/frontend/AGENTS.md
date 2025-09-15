# Agents — Frontend

Commands
- Install deps: `pnpm i`
- Dev server: `pnpm dev`
- Tests: `pnpm test`
- Storybook: `pnpm storybook`
- Lint: `pnpm lint` | Format check: `pnpm format`

Notes
- Node 22, pnpm 9 (in devcontainer).
- Storybook is for rapid iteration; not part of default tests.
- If you see an esbuild approve prompt, run: `pnpm approve-builds`

Why
- React 18, Vite 4, TS 5.2: stable, well-known combo to avoid churn.
- Vitest + Testing Library: fast unit tests in jsdom; `vitest.setup` wires matchers.
- Tailwind: quick UI iteration; standard PostCSS pipeline.
