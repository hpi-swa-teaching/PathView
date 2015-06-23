geometry
extendDiagramAreaTo: newBounds

	| bounds |
	bounds := self boundsInWorld.
	(bounds top > newBounds top) ifTrue: [ self extendTopBy: (bounds top - newBounds top)].
	(bounds bottom < newBounds bottom) ifTrue:  [self extendBottomBy: (newBounds bottom - bounds bottom)].
	(bounds left > newBounds left) ifTrue: [self extendLeftBy: (bounds left - newBounds left)].
	(bounds right < newBounds right) ifTrue: [self extendRightBy: (newBounds right - bounds right)].
	