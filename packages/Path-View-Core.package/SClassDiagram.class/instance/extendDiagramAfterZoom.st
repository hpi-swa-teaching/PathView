geometry
extendDiagramAfterZoom

	| newBounds noOffset |
	newBounds := self scrollPane boundsInWorld.
	noOffset := 0.
	self extendDiagramAreaTo: (self boundsInWorld merge: newBounds) with: noOffset.

	