graph constants
cornerOrdering
	"This determines in which order neighbors are assigned to corners of their neighbor nodes."
	
	^ self closeNeighbors
		ifTrue: [ { 1. 3. 5. 7. 0. 2. 4. 6 } ] "Use sides of the nodes first, to get a closer packing. Use the corners after."
		ifFalse: [ { 0. 4. 2. 6. 1. 5. 3. 7 } ] "Try to use farthest corners first, then fill up the gaps."