layout - positioning - naive
positionNeighborsOf: node alreadyPositioned: aSet
	"node is assumed to be positioned already."
	
	node corneringNodes withIndexDo: [ :neighbor :i |
		(neighbor notNil and: [ (aSet includes: neighbor) not ]) ifTrue: [
			neighbor position: (node position +
				(i caseOf: {
					[ 1 ] -> [ neighbor extent negated - self class minimumSpacing ].
					[ 2 ] -> [ (node extent x - neighbor extent x) / 2 @ (self class minimumSpacing negated - neighbor extent y) ].
					[ 3 ] -> [ (node extent x + self class minimumSpacing) @ (self class minimumSpacing negated - neighbor extent y) ].
					[ 4 ] -> [ (node extent x + self class minimumSpacing) @ ((node extent y - neighbor extent y) / 2) ].
					[ 5 ] -> [ node extent + self class minimumSpacing ].
					[ 6 ] -> [ (node extent x - neighbor extent x) / 2 @ (node extent y + self class minimumSpacing) ].
					[ 7 ] -> [ (neighbor extent x negated - self class minimumSpacing) @ (node extent y + self class minimumSpacing) ].
					[ 8 ] -> [ (neighbor extent x negated - self class minimumSpacing) @ ((node extent y - neighbor extent y) / 2) ].
				})).
			aSet add: neighbor.
			self positionNeighborsOf: neighbor alreadyPositioned: aSet ] ].