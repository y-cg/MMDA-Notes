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
  - Optimization:
    - We have two sets of unknowns: $G_1, dots, G_k$ and $z_1, dots, z_k$.
    Algorithm: (Alternating minimization)
    #enum(
      enum.item()[
        Initialization $z_1, dots, z_k$
      ],
      enum.item()[
        Fix $z_1, dots, z_k$, solve the min with respect to $G_1, dots, G_k$:
        $
          "solve" min_(G_1, dots, G_k) sum_(j=1)^K sum_(i in G_j) ||x_i - z_j||^2_2
        $<objective-fn-1>
      ],
      enum.item()[
        Fix $G_1, dots, G_k$, solve the min with respect to $z_1, dots, z_k$:
        $
          "solve" min_(z_1, dots, z_k) sum_(j=1)^K sum_(i in G_j) ||x_i - z_j||^2_2
        $<objective-fn-2>
      ],
    )
    How to solve @objective-fn-1 and @objective-fn-2?

    Solving @objective-fn-1:
    $
      sum_(j=1)^K sum_(i in G_j) ||x_i - z_j||^2_2
      &= sum_(i = 1)^N ||x_i - z_(c_i)||^2_2 \
      &<=> min_(c_i in {1, 2, dots, K}) ||x_i - z_(c_i)||^2_2 \
      &<=> c_i = op("argmin", limits: #true)_(j in {1, 2, dots, K}) ||x_i - z_j||^2_2
    $
    that is, $x_i$ is assigned to the group $j$ that minimizes the distance to the representative vector $z_j$.
