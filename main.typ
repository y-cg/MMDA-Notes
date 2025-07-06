#set par(
  leading: 1em,
  justify: true,
)

#show heading.where(level: 1): it => [
  #it
  #v(0.7em)
]

#show heading.where(level: 2): it => [
  #it
  #v(0.7em)
]

#set enum(
  tight: false,
  spacing: 1.5em,
)

#set math.equation(numbering: "(1)")

#include "topics/03.typ"
#include "topics/04.typ"
