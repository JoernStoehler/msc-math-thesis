from __future__ import annotations

from pathlib import Path

from runner.core import run_job


def test_run_job(tmp_path: Path) -> None:
    out = run_job(tmp_path)
    assert Path(out["solution"]).is_file()
    assert Path(out["log"]).is_file()
    content = Path(out["solution"]).read_text(encoding="utf-8")
    assert "Hello, math agent!" in content

