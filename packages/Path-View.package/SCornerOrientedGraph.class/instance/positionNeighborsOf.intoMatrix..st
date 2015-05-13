layout - positioning
positionNeighborsOf: node intoMatrix: positions
	
	node corneringNodes withIndexDo: [ :neighbor :i |
		(neighbor notNil and: [ (positions includesKey: neighbor) not ]) ifTrue: [ | newPosition |
			newPosition := (positions at: node) + (i caseOf: {
				[ 1 ] -> [ -1 @ -1 ].
				[ 2 ] -> [ 0 @ -1 ].
				[ 3 ] -> [ 1 @ -1].
				[ 4 ] -> [ 1 @ 0 ].
				[ 5 ] -> [ 1 @ 1 ].
				[ 6 ] -> [ 0 @ 1 ].
				[ 7 ] -> [ -1 @ 1 ].
				[ 8 ] -> [ -1 @ 0 ].
			}).
			positions at: neighbor put: newPosition.
			self positionNeighborsOf: neighbor intoMatrix: positions ] ].