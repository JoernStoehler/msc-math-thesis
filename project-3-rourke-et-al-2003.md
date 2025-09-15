# Partitioning Regular Polygons into Circular Pieces (Damian–O'Rourke, 2003)

Project idea: there's a optimization problem

Problem: minimize the aspect ratio of a convex partition of the square.
The aspect ratio of a polygon is the ratio of its minimum enclosing circle to its maximum inscribed circle.
The aspect ratio of a convex partition is the maximum aspect ratio of any of its polygonal pieces.
The aspect ratio of a convex partition of the square is at least 1.28868.
The authors give a convex partition with aspect ratio 1.29950.

We can use numerical methods to search for better partitions, thereby improving the upper bound on the optimal aspect ratio.
We can potentially even do an exhaustive search to form conjectured lemmas that then improve the lower bound.

## Preliminary Project Roadmap

Phase 1:
1. Implement data types, and slow evaluation and validation functions
2. Implement gradient descent on the vertex set, and jumps in the graph structure
3. Improve performance and search for better partitions at moderate resolution (~100 vertices)

Phase 2:
4. Interpret results, e.g. for an explicit construction of a series of partitions with increasing resolution
5. Design an exhaustive search that provides a lower bound on the optimal aspect ratio
6. Implement, improve performance and enumerate partitions to increase the lower bound

Phase 3:
7. Write up results

## References
- Damian, M., & O'Rourke, J. (2003). Partitioning Regular Polygons into Circular Pieces I: Convex Partitions. arXiv:cs/0304023. https://arxiv.org/abs/cs/0304023
- Demaine, E. D., & O'Rourke, J. (2002/2003). Open Problems from CCCG 2002. arXiv:cs/0212050. https://arxiv.org/abs/cs/0212050

