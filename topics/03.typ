= Metric on Vector Space

Motivation: We want to define "closeness / distance" of two vectors in a vector space.

Let $V$ be a vector space, let $x, y in V$ then

$
  "dist"(x, y) = "dist"(x - y, y - y) = "dist"(x - y, 0)
$

To define distance, we only need to define the length of vectors.
Let $x in V$, we denote that $||x||$ be the length of $x$.
Then $||x||$ should satisfy:

+ $||x|| >= 0$ (length is non-negative)
+ $||x|| = 0$ if and only if $x = 0$ (length is zero only for zero vector)
+ $||alpha x|| = |alpha| ||x||$ (length is scaled by absolute value of scalar)
+ $||x + y|| <= ||x|| + ||y||$ (triangle inequality)

Definition: A function $||.|| : V -> bb(R)$ is called a norm on $V$ if it satisfies the above properties.