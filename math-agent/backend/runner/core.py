from __future__ import annotations

import os
from pathlib import Path
from datetime import datetime, UTC


def run_job(job_dir: Path) -> dict:
    job_dir = Path(job_dir)
    logs_dir = job_dir / "logs"
    logs_dir.mkdir(parents=True, exist_ok=True)

    solution = job_dir / "solution.tex"
    log_file = logs_dir / "run.log"

    # Convention: Never log secrets. Env only.
    # We write controlled, whitelisted log lines only.
    start = datetime.now(UTC).isoformat()
    lines = [
        f"start {start}",
        "info creating solution.tex",
    ]

    solution.write_text(
        """\\documentclass{article}
\\begin{document}
Hello, math agent!\\par
\\end{document}
""",
        encoding="utf-8",
    )
    lines.append("ok solution.tex written")

    # Simulate codex-cli step without echoing env or commands
    lines.append("info simulated codex-cli run")

    end = datetime.now(UTC).isoformat()
    lines.append(f"end {end}")
    log_file.write_text("\n".join(lines) + "\n", encoding="utf-8")

    return {"job_dir": str(job_dir), "solution": str(solution), "log": str(log_file)}
