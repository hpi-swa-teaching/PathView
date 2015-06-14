geometry
extendDiagramAreaTo: newBounds

	| bounds |
	bounds := self boundsInWorld.
	(bounds top > newBounds top) ifTrue: [self dragTopBy: (bounds top - newBounds top)].
	(bounds bottom < newBounds bottom) ifTrue:  [self dragBottomBy: (newBounds bottom - bounds bottom)].
	(bounds left > newBounds left) ifTrue: [self dragLeftBy: (bounds left - newBounds left)].
	(bounds right < newBounds right) ifTrue: [self dragRightBy: (newBounds right - bounds right)].
	