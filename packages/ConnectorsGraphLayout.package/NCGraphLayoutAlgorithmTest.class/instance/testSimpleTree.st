running
testSimpleTree
	| r1 r2 r3 |
	
	r1 := self addRectangleNamed: 'r1' at: 150@250.
	r2 := self addRectangleNamed: 'r2' at: 250@50.
	r3 := self addRectangleNamed: 'r3' at: 350@250.

	self connect: r1 to: r2.
	self connect: r3 to: r2.

	self runGraph

