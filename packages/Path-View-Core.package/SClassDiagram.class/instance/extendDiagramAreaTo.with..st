geometry
extendDiagramAreaTo: newBounds with: anOffset

	| bounds |
	bounds := self boundsInWorld.
	(bounds top > newBounds top) ifTrue: [ self extendTopBy: (bounds top - newBounds top) with: anOffset].
	(bounds bottom < newBounds bottom) ifTrue:  [self extendBottomBy: (newBounds bottom - bounds bottom) with: anOffset].
	(bounds left > newBounds left) ifTrue: [self extendLeftBy: (bounds left - newBounds left) with: anOffset].
	(bounds right < newBounds right) ifTrue: [self extendRightBy: (newBounds right - bounds right) with: anOffset].
	