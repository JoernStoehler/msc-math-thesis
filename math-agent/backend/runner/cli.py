from __future__ import annotations

import argparse
from pathlib import Path

from .core import run_job


def main() -> None:
    parser = argparse.ArgumentParser(prog="math-agent-runner", description="Dummy job runner")
    parser.add_argument("job_dir", type=Path, help="Path to job workspace directory")
    args = parser.parse_args()

    result = run_job(args.job_dir)
    # Controlled stdout for agents/CI
    print(result["solution"])  # noqa: T201


if __name__ == "__main__":  # pragma: no cover
    main()

