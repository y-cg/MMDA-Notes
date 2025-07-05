= Clustering, K-means, K-medians

Clustering: suppose we are given $N$ vectors in $bb(R)^n$: $x_1, x_2, dots, x_N in bb(R)^n$, group them in to different $K$ clusters.

- Applications:
  - Image clustering
  - Text data clustering
  - Recommendation systems

- Math Formulation: ML = Rep + Eval + Opt
  - Representation:
    - Let $c_i$ be the group that $x_i$ belongs to ($i = 1, 2, dots, N$ and $c_i$ is in $\{1, 2, dots, K\}$)
    - $G_j$ be the set of vectors *indices* that in group $c_j$, where $G_j = { i | c_(i) = j }$
    - $z_j$ be the representative vector of group $j$ ($j = 1, 2, dots, K$) \
    $z_j$ is not necessarily in ${ x_1, x_2 dots, x_n }$, but it is a vector in $bb(R)^n$.

  - Evaluation:
    - Within $G_j$: all vectors should be close to $z_j$ \
    Define the objective function as:
    $ J_j = sum_(i in G_j) ||x_i - z_j||^2_2 $
    and we want to minimize $J_j$ for each $j = 1, 2, dots, K$.
    - Consider all groups:
    $ J = sum_(j=1)^K J_j $
    we want to minimize $J$. Then we solve:
    $
      min_(G_1, dots, G_k \ z_1, dots, z_k) J
      <==> min_(G_1, dots, G_k \ z_1, dots, z_k) sum_(j=1)^K sum_(i in G_j) ||x_i - z_j||^2_2
    $
