# Math Agent

Modern LLMs are capable of solving bachelor and master level math exercises. We are interested in how reliable they are, and whether they can write educationally valuable solutions, i.e. solutions that are suitable as official solutions for exercises.

We have access to a large set of problems from various lectures, including the full set of the Analysis 1, 2, 3 lectures at university Augsburg.
We want to develop a LLM-powered tool that autonomously creates correct, complete, and educationally valuable solutions for this set of problems, with one-time human verification but also sufficiently high reliability to be trustworthy without verification. In essence, a benchmark.
We also want to track, in case measured realiability is not 100%, what the failure modes are, and how to verify correctness in AI-generated solutions efficiently, e.g. by focusing first on the spots where AIs make mistakes most frequently, or by explaining the difference between the AI- and the human error distribution within texts.

The high-reliability AI tool can then be made available to lecturers as a tool to generate solutions for their exercises, speeding up their exercise design process.

Potentially, another tool that is student-focused can be built, which focuses on solutions tailored to the individual student, e.g. by responding to questions by expanding on parts of the solution, or presenting alternative solution paths, or explaining how to arrive at the solution.

## Preliminary Project Roadmap

Phase 1:
1. Re-download the exercise set and clean it up
2. Iterate the LLM prompts on a small subset of exercises, compare a single- or multi-prompt system, compare an agent loop and single-pass agent, and impact of tools (e.g. filesystem, python, matplotlib, sympy, etc) made available to the agents.
3. Run the refined (internally multi-agent) tool on the full exercise set, and verify correctness manually via grading.
4. Analyze failure modes, iterate and regrade if necessary.

Phase 2:
5. Develop an easily deployable front-end for lecturers to use the tool on their own exercise sets.
6. (Optional) Develop a student-focused tool that can interactively explain solutions to students.
7. Write up results and publish the tool(s) and benchmark and benchmark results.

## References
- None
