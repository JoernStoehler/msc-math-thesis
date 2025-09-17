# Deep Research Report — Systolic Capacity of Convex Sets

## Executive Summary of the State of the Art

### Symplectic systolic capacity for convex domains
Symplectic capacities assign a monotone, conformal size to subsets of $(\mathbb{R}^{2n},\omega)$ and coincide on smooth, strictly convex domains. In this setting the Hofer–Zehnder, first Ekeland–Hofer, Viterbo symplectic homology, and first Gutt–Hutchings capacities all equal the minimal action of a closed Reeb orbit on the boundary, commonly called the Ekeland–Hofer–Zehnder (EHZ) or systolic capacity.

### Historical progress toward Viterbo's conjecture
Viterbo conjectured in 2000 that, after normalization, every symplectic capacity on convex bodies is bounded above by the Euclidean ball with the same volume, and that all normalized capacities coincide on convex domains. Work over the past two decades provided strong evidence: Artstein-Avidan and Ostrover proved inequalities up to universal constants, Abbondandolo–Bramham–Hryniewicz–Salomão established the sharp four-dimensional case, and numerous computations for ellipsoids, polydiscs, toric, and near-spherical domains aligned with the conjecture. Connections to Mahler's conjecture further reinforced the program for centrally symmetric bodies.

### 2024 breakthrough — counterexample
In 2024 Pazit Haim-Kislev and Yaron Ostrover produced a convex polytope in $\mathbb{R}^4$ (a product of two pentagons) whose EHZ capacity exceeds that of the four-ball with the same volume, disproving Viterbo's volume-capacity conjecture and the strong expectation that all normalized capacities agree on convex sets. Their construction uses explicit formulas for EHZ capacities of polytopes via periodic Minkowski billiards and extends to higher even dimensions.

### Current outlook
The counterexample refocuses attention on refined conjectures. The Mahler-linked symmetric case remains open, the maximal capacity-to-volume ratio and potential extremizers are unknown, and researchers are examining higher capacities, toric families, and algorithmic tools to map the new landscape. Convex billiards, symplectic homology, and computational experiments continue to drive progress.

## Annotated Bibliography (Key Results & Methods)

- **M. Gromov (1985) – Non-squeezing theorem.** Introduced symplectic rigidity and the Gromov width, demonstrating that volume alone cannot determine symplectic size.
- **I. Ekeland & H. Hofer (1989) – Symplectic capacities for convex energy surfaces.** Defined the first variational capacities $c_k$ and proved the existence of closed characteristics on convex hypersurfaces, with $c_1$ realizing the minimal action.
- **H. Hofer & E. Zehnder (1990) – Hofer–Zehnder capacity.** Extended capacity theory to general subsets via Hamiltonian dynamics and showed coincidence with $c_1$ on convex domains.
- **C. Viterbo (2000) – Metric and isoperimetric problems in symplectic geometry.** Formulated the volume-capacity conjecture and proposed symplectic homology capacities normalized on the ball and cylinder.
- **S. Artstein-Avidan, V. Milman, Y. Ostrover (2008) – The $\lambda$-ellipsoid, symplectic capacities, and volume.** Established inequalities relating capacity to volume radius up to universal constants, advancing the conjecture in high dimensions.
- **S. Artstein-Avidan, R. Karasev, Y. Ostrover (2014) – From symplectic measurements to the Mahler conjecture.** Linked Viterbo's conjecture on $K \times K^*$ for centrally symmetric $K$ to Mahler's volume product conjecture, creating a two-way bridge between symplectic and convex geometry.
- **E. Gluskin & Y. Ostrover (2016) – Asymptotic equivalence of symplectic capacities.** Proved that normalized capacities on symmetric convex bodies become equivalent up to constants as dimension grows, suggesting asymptotic rigidity.
- **A. Abbondandolo, B. Bramham, U. Hryniewicz, P. Salomão (2018) – Sharp systolic inequalities for Reeb flows on $S^3$.** Confirmed Viterbo's inequality in dimension four by bounding the square of the shortest Reeb period by contact volume, with equality only for Zoll forms.
- **J. Gutt & M. Hutchings (2018) – Positive $S^1$-equivariant symplectic homology capacities.** Constructed a sequence of capacities $c_k$ that agree with EHZ on convex domains and computed them for toric examples, extending embedded contact homology methods beyond four dimensions.
- **D. Hermann (1998) – Non-equivalence of symplectic capacities.** Exhibited non-convex sets where capacities diverge, underscoring the role of convexity in the conjecture.
- **E. Gutkin & S. Tabachnikov (2002) – Billiards in Finsler and Minkowski geometries.** Developed the billiard perspective that underpins EHZ computations for polytopes and links convex billiards to Reeb dynamics.
- **P. Haim-Kislev (2019) – On the symplectic size of convex polytopes.** Derived combinatorial formulas and algorithms for EHZ capacities of polytopes, enabling computational exploration.
- **P. Haim-Kislev & Y. Ostrover (2024) – A counterexample to Viterbo's conjecture.** Produced the first convex example violating the volume-capacity inequality and showed analogous constructions in all higher dimensions.
- **A. Balitskiy (2020) – Equality cases in Viterbo's conjecture and isoperimetric billiard inequalities.** Characterized potential equality cases via billiard trajectories, highlighting parallelograms and their higher-dimensional analogues.
- **D. Bezdek & K. Bezdek (2009) – Shortest billiard trajectories.** Established extremal properties of periodic billiards in convex bodies, providing bounds that translate to capacity estimates.
- **J. Chaidez & O. Edtmair (2022) – Convex contact forms, the Ruelle invariant, and index gaps.** Analyzed contact dynamics on $S^3$ and derived constraints on capacity sequences for dynamically convex domains.
- **K. Irie (2022) – Symplectic homology of fiberwise convex sets and loop space homology.** Computed capacities for toric and fiberwise convex domains via symplectic homology, recovering classical formulas.
- **R. Karasev & A. Sharipova (2019) – Viterbo's conjecture for certain Hamiltonians.** Verified the inequality for integrable mechanical Hamiltonians and specific convex energy levels.
- **D. Rudolf (2022) – Minkowski billiard characterization of the EHZ capacity and Viterbo's conjecture for Lagrangian products.** Simplified EHZ computations for products and studied Lagrangian product domains related to Mahler's conjecture.
- **P. Siegel (2019) – Higher symplectic capacities.** Introduced higher product-compatible capacities using symplectic field theory, providing tools to probe the strong form of the conjecture.

## Thematic Clusters in the Literature

### 1. Foundations of symplectic capacities and convex invariants
Classical works define capacity axioms, prove existence of closed characteristics on convex hypersurfaces, and show the coincidence of multiple capacities on convex domains via variational, Hamiltonian, and symplectic homology methods.

### 2. Volume–capacity inequalities and the Viterbo program
Research focused on proving the conjectured inequality, covering perturbations of the ball, monotone toric domains, Lagrangian products, and the eventual counterexample. Current efforts seek revised inequalities, local maxima, and higher-capacity analogues.

### 3. Interfaces with convex geometry
Links to Mahler's conjecture, symplectic Banach–Mazur distance, duality, and volume-product inequalities reveal deep ties between symplectic and convex extremal problems, with symmetric cases remaining a central frontier.

### 4. Explicit families: ellipsoids, polydiscs, and toric domains
Computable examples using embedded contact homology and symplectic homology provide full capacity sequences, benchmark the conjecture, and describe symplectic embedding constraints via combinatorial or lattice-point data.

### 5. Billiards, dynamics, and computation
Minkowski billiard models translate capacity problems into periodic trajectory searches, enabling algorithmic approaches for polytopes and motivating software that enumerates Reeb orbits, studies integrability, and explores extremal examples.

## Open Problems and Known Gaps

### Convex symmetric case and Mahler's conjecture
The equivalence with Mahler's volume product conjecture leaves the centrally symmetric case unresolved for $n \ge 4$, despite recent progress in low dimensions.

### Sharp inequalities and extremizers
With the ball dethroned, determining maximal capacity-to-volume ratios, identifying extremal shapes, and classifying equality cases are open challenges. It is unknown whether polytopes like the pentagon product are optimal or if larger violations exist.

### Refined conjectures and higher capacities
Researchers are formulating inequalities with dimension-dependent constants and investigating whether higher capacities $c_k$ retain extremal behavior on balls or other domains even when $c_1$ fails.

### Computational complexity and algorithms
Beyond polytopes, no general efficient algorithm for EHZ capacity is known. The complexity of computing capacities for smooth convex bodies or deciding inequalities remains open.

### New invariants and contact systolic geometry
Understanding how higher symplectic capacities, embedded contact homology sequences, and contact systolic invariants interact may yield refined rigidity statements and characterize Zoll or dynamically convex maximizers.

### Extensions beyond Euclidean space
Analogs for convex domains in other symplectic manifolds, cotangent bundles, or projective geometries remain largely unexplored and may require new techniques.

## Datasets, Software, and Computational Resources

- **EHZ capacity calculator (P. Haim-Kislev, 2019).** MATLAB code implementing the polytope formula for EHZ capacities, enabling large-scale searches for extremal shapes.
- **Symplectic Capacities Project (Kyler Siegel et al.).** Recursive formulas and notes for computing higher capacities of toric domains, with implementations used in ongoing research.
- **Convex-geometry toolchains.** Packages such as Polymake and Sage facilitate facet enumeration, volume computation, and integration with custom capacity scripts.
- **Numerical billiard solvers.** Dynamical-systems simulations help locate short periodic billiard trajectories, informing heuristics for capacity maximization.
- **Emerging datasets.** Researchers are compiling capacity values for random or structured polytopes to study distributions, asymptotics, and potential extremizers.

## Citations

- [A Counterexample to Viterbo's Conjecture (Haim-Kislev & Ostrover, 2024)](https://ar5iv.org/abs/2405.16513)
- [Viterbo's conjecture was refuted by Pazit Haim-Kislev and Yaron Ostrover (Kalai blog, 2024)](https://gilkalai.wordpress.com/2024/09/23/viterbos-conjecture-was-refuted-by-pazit-haim-kislev-and-yaron-ostrover/)
- [Viterbo Conjecture overview (Weiwei Wu)](https://weiweiwu-math.github.io/ViterboConjecture.pdf)
- [On Symplectic Capacities and Volume Radius (Artstein-Avidan & Ostrover, 2006)](https://arxiv.org/abs/math/0603411)
- [Asymptotic Equivalence of Symplectic Capacities (Gluskin & Ostrover, 2016)](https://arxiv.org/abs/1509.01797)
- [EHZ Capacity of Convex Polytopes — MATLAB implementation](https://github.com/pazithaimkislev/EHZ-capacity)
- [Symplectically Self-Polar Polytopes of Minimal Capacity (Balitskiy & Ivanov, 2023)](https://arxiv.org/html/2310.14998v2)
- [Computing Higher Symplectic Capacities I (Siegel, 2019)](https://arxiv.org/abs/1911.06466)
- [On the Local Maximizers of Higher Capacity Ratios (Mazzucchelli et al.)](https://perso.ens-lyon.fr/marco.mazzucchelli/preprints/higher_capacities.pdf)
- [Higher Symplectic Capacities (Kyler Siegel, lecture notes)](https://weiweiwu-math.github.io/Mak.pdf)
- [Symplectic Capacities of $p$-Products (Haim-Kislev, slides)](http://www.math.tau.ac.il/~sarabt/zoominar/slides/220128b_Haim-Kislev.pdf)
- [Remark on the Coisotropic Ekeland–Hofer–Zehnder Capacity (Gao & Jiang, 2023)](https://www.sciencedirect.com/science/article/abs/pii/S0362546X23002511)
- [Symplectic Capacities Project homepage](https://kylersiegel.xyz/EHZ/index.html)
- [Symplectic Capacities and Convex Bodies (Rudolf, 2013)](https://arxiv.org/pdf/1308.5522)
- [Local Properties of Symplectic Capacities (2025 preprint)](https://arxiv.org/pdf/2501.13856)
- [On Symplectic Capacities and Volume Radius (extended notes)](https://www.tau.ac.il/~shiri/Symplectic/log.pdf)
