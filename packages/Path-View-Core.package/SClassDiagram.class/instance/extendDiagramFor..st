geometry
extendDiagramFor: aMorph

	self extendDiagramAreaTo: (self boundsInWorld merge: aMorph boundsInWorld).
	self updateScrollPane
