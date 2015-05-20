running
testComplexTree
| r1 r2 r3 r4 r5 r6 r7 |
r1 := self addRectangleNamed: 'r1' at: 50@50.
r2 := self addRectangleNamed: 'r2' at: 150@150.
r3 := self addRectangleNamed: 'r3' at: 250@250.
r4 := self addRectangleNamed: 'r4' at: 350@350.
r5 := self addRectangleNamed: 'r5' at: 50@150.
r6 := self addRectangleNamed: 'r6' at: 150@250.
r7 := self addRectangleNamed: 'r7' at: 250@350.

self connect: r1 to: r2.
self connect: r3 to: r2.
self connect: r5 to: r3.
self connect: r6 to: r3.
self connect: r7 to: r6.
self connect: r4 to: r1.

self runGraph