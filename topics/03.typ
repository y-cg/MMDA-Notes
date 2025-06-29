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

#align(right)[$qed$]

$p$-norm

$
  ||x||_p = (sum_(i=1)^n |x_i|^p)^(1/p)
$
$||dot||_p$ is a norm on $bb(R)^n$ for if and only if $p >= 1$.

when $p -> infinity$ then $||x||_p$ is still a norm:

$
  forall x in bb(R)^n, ||x||_infinity = max_(i = 1, 2, ..., n) |x_i|
$

Property:
$
  ||x||_p <= ||x||_q "if" p >= q
$

For instance: $ ||x||_1 >= ||x||_2 >= ||x||_infinity $


// vector norms for a matrix
Example 3: $bb(R)^(m times n)$ is a vector space:

- $bb(R)^(m times n)$ can be viewed as $bb(R)^(m n)$
$
  mat(
    x_11, x_12, dots.h, x_(1n);
    x_21, x_22, dots.h, x_(2n);
    dots.v, dots.v, dots.v, dots.v;
    x_(m 1), x_(m 2), ..., x_(m n)
  )
  ==>
  mat(
    x_11; dots.v; x_(1n);
    x_21; dots.v; x_(2n);
    dots.v;
    x_(m 1); dots.v; x_(m n)
  )
$

We can define vector $p$-norm on $bb(R)^(m n)$ for a matrix $A$ on $bb(R)^(m times n)$:

$
  ||A||_p = (sum_(i=1)^m sum_(j=1)^n |x_(i j)|^p)^(1/p)
$

For instance when $p = 2$ then:

$
  ||A||_F = ||A||_(2, "vec") = (sum_(i=1)^m sum_(j=1)^n |x_(i j)|^2)^(1/2)
$

which is called Frobenius norm. When $p = infinity$ then:

$
  ||A||_(infinity, "vec") = max_(i = 1, 2, ..., m) max_(j = 1, 2, ..., n) |x_(i j)|
$

// matrix norms for a matrix
$bb(R)^(m times n)$ can also be viewed as linear transformations $bb(R)^n -> bb(R)^m$. We define matrix $p$-norm by:
$
  ||A||_p =^("def") max_(x in bb(R)^n , x != 0) ( ||A x||_p ) / (||x||_p)
  = max_(||x||_p = 1) ||A x||_p
$

#pagebreak()

#import "@preview/cetz:0.4.0"

#grid(
  columns: 2,
  column-gutter: 1cm,
  figure(
    // ||x||_2 = 1
    cetz.canvas(length: 2cm, {
      import cetz.draw: *

      set-style(
        stroke: (thickness: 0.4pt, cap: "round"),
        content: (padding: 1pt),
      )

      grid(
        (-1.5, -1.5),
        (1.4, 1.4),
        step: 0.5,
        stroke: gray + 0.2pt,
      )
      line((-1.5, 0), (1.5, 0), mark: (end: "stealth"))
      content((), $ x $, anchor: "west")
      line((0, -1.5), (0, 1.5), mark: (end: "stealth"))
      content((), $ y $, anchor: "south")

      circle((0, 0), radius: 1)

      for (x, ct) in ((-1, $ -1 $), (1, $ 1 $)) {
        line((x, 3pt), (x, -3pt))
        content((), anchor: "north", ct)
      }

      for (y, ct) in ((-1, $ -1 $), (1, $ 1 $)) {
        line((3pt, y), (-3pt, y))
        content((), anchor: "east", ct)
      }
    }),
    caption: [ ${ x | x in bb(R)^n "and" ||x||_2 = 1 }$],
  ),

  figure(
    // draw ellipse
    cetz.canvas(length: 2cm, {
      import cetz.draw: *

      set-style(
        stroke: (thickness: 0.4pt, cap: "round"),
        content: (padding: 1pt),
      )

      grid(
        (-1.5, -1.5),
        (1.4, 1.4),
        step: 0.5,
        stroke: gray + 0.2pt,
      )
      line((-1.5, 0), (1.5, 0), mark: (end: "stealth"))
      content((), $ x $, anchor: "west")
      line((0, -1.5), (0, 1.5), mark: (end: "stealth"))
      content((), $ y $, anchor: "south")

      circle((0, 0), radius: (1, 0.5))
    }),
    caption: [ ${ A x | A in bb(R)^(m times n) "and" ||x||_2 = 1 , x in bb(R)^n }$],
  ),
)

So that $||A||_2$ is just to find a point on the ellipse that has the largest distance from the origin.

In the analytical view:

$
  ||A||_2^2 & = max_(||x||_2 = 1) ||A x||^2_2   \
            & = max_(||x||_2 = 1) (x^T A^T A x) \
            & = max "eigenvalue of" A^T A       \
$
then:
$
  ||A||_2 & = sqrt(max "eigenvalue of" A^T A)   \
          & =^("aka") "max singular value of" A
$
$|| dot ||_2$ is also called the operator norm of $A$.

- When $p = 1$: (max column 1-norm)
$
  ||A||_1 = max_(j = 1, ..., n) (sum_(i = 1)^m |x_(i j)|)
$

- When $p = infinity$: (max row 1-norm)
$
  ||A||_infinity = max_(i = 1, ..., m) (sum_(j = 1)^n |x_(i j)|)
$

- The default norm of a matrix is $|| dot ||_2$

- We can have other matrix norms, e.g. we can use different norms in $bb(R)^n$ ($p$-norm) and $bb(R)^m$ ($q$-norm):

$
  ||A||_(p -> q) = max_(||x||_p = 1) ||A x||_q
$