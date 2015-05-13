corner-oriented layout
distanceOfCorner: corner1 to: corner2
	
	| dist |
	dist := (corner2 - corner1) abs.
	dist > 4 ifTrue: [
		dist := (corner1 min: corner2) + (7 - (corner1 max: corner2)) + 1 ].
	^ dist