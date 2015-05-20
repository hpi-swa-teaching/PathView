running
testOffPage
| r1 r2 r3 |
r1 := self addRectangleNamed: 'r1' at: 0@0.
r2 := self addRectangleNamed: 'r2' at: 15@15.
r3 := self addRectangleNamed: 'r3' at: 25@25.

self connect: r1 to: r2.
self connect: r3 to: r2.

self runGraph

	