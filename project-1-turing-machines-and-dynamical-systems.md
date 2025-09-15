# Turing Machines and Dynamical Systems

This project explores formal connections between computation and dynamics, focusing on how discrete/continuous dynamical systems can simulate computation and, conversely, how computational complexity and undecidability appear in dynamics.

## Motivation
- Understand when dynamical systems encode computations (universality, simulation).
- Identify undecidable or intractable properties arising in dynamics (reachability, stability, chaos, invariants).
- Bridge symbolic dynamics, cellular automata, and smooth/analytic dynamical systems (e.g., ODEs, iterated maps).

## Guiding Questions
- Which classes of dynamical systems are Turing universal? What encodings are used?
- Which natural decision problems about dynamics are undecidable or hard (e.g., mortality, reachability, topological conjugacy)?
- How robust are such encodings to perturbations/noise? What changes in the continuous vs discrete settings?
- Are there meaningful “complexity measures” for dynamics aligned with computational complexity?

## Proposed Deliverables
- A focused survey explaining at least two universality/undecidability constructions in detail, including complete proofs or proof sketches.
- A small library of reproducible implementations/experiments illustrating one construction (e.g., cellular automata emulating Turing machines, or a piecewise-affine map encoding a computation).
- A critical comparison of techniques (symbolic codings, gadgets, embedding arguments) and their limitations/robustness.

## Preliminary Roadmap
Phase 1 — Literature mapping and selection
1. Survey known universality/undecidability results across models (CA, subshifts, iterated maps, ODEs).
2. Select two complementary constructions to study in depth (e.g., a symbolic-dynamics construction and a continuous-time construction).

Phase 2 — Deep dive + replication
3. Write detailed notes reconstructing the proofs and constructions, with diagrams and step-by-step encodings.
4. Implement a minimal prototype demonstrating the construction and empirical behavior; add tests and visualizations.

Phase 3 — Synthesis
5. Compare assumptions, robustness, and limitations; identify open problems and promising directions.
6. Write up the survey+project report with unified notation and polished exposition.

## Risks and Mitigations
- Scope creep: Many models exist; constrain to two core constructions and one prototype.
- Technical depth: Prioritize sources with complete proofs; allocate time for background consolidation.
- Fragility: Prefer constructions with clear robustness analyses or include a dedicated robustness discussion.

## Background Reading (starter list)
- Moore, C. (1990). Unpredictability and undecidability in dynamical systems. Physical Review Letters, 64(20), 2354–2357. doi:10.1103/PhysRevLett.64.2354
- Braverman, M., & Yampolsky, M. (2010). Computability of Julia Sets. Springer.
- Kari, J. (2005). Theory of cellular automata: A survey. Theoretical Computer Science, 334(1–3), 3–33. doi:10.1016/j.tcs.2004.11.021
- Lind, D., & Marcus, B. (1995). An Introduction to Symbolic Dynamics and Coding. Cambridge University Press.

Note: Expand/adjust references after an initial literature pass to match chosen constructions.

