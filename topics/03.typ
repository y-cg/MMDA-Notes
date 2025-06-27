= Metric on Vector Space

== Definition

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

Definition: A function $||dot|| : V -> bb(R)$ is called a norm on $V$ if it satisfies the above properties.

== Examples

Example 1: $bb(R)$ is a vector space over $bb(R)$. $||x|| = |x|$ defines a norm on $bb(R)$.

- $||x|| = 1/2 |x|$ is also a norm on $bb(R)$
$dots.v$
- $||x|| = c |x|, c > 0$  is also a norm on $bb(R)$

#text(weight: "bold")[
  There are infinitely many norms on the same vector space
]


Example 2: $bb(R)^n$ is a vector space:

- Euclidean norm ($2$-norm):
  $
    ||x||_2 = sqrt(x_1^2 + x_2^2 + ... + x_n^2)
  $

Prove $||dot||_2$ is a norm on $bb(R)^n$.

Proof:
+ $||x||_2 >= 0$ is trivial.
+ $||x||_2 = 0 <=> sum_(i=1)^n x_i^2 = 0 <=> x_i = 0 #v(1em) forall i = 1, 2, ..., n$.
+ $||alpha x||_2 = sqrt((alpha x_1)^2 + (alpha x_2)^2 + ... + (alpha x_n)^2) = |alpha| sqrt(x_1^2 + x_2^2 + ... + x_n^2) = |alpha| ||x||_2$.
