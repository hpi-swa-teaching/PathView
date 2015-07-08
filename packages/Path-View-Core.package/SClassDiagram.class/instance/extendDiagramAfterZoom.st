zooming
extendDiagramAfterZoom

	| bounds newBounds noOffset |
	bounds := self boundsInWorld.
	newBounds := self scrollPane boundsInWorld.
	noOffset := 0.
	(bounds top > newBounds top) ifTrue: [ self extendTopBy: (bounds top - newBounds top) with: noOffset].
	(bounds bottom < newBounds bottom) ifTrue:  [self extendBottomBy: (newBounds bottom - bounds bottom) with: noOffset].
	(bounds left > newBounds left) ifTrue: [self extendLeftBy: (bounds left - newBounds left) with: noOffset].
	(bounds right < newBounds right) ifTrue: [self extendRightBy: (newBounds right - bounds right) with: noOffset].

	