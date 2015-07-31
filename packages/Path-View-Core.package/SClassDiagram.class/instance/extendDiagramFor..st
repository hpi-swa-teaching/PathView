geometry
extendDiagramFor: aMorph

	self extendDiagramAreaTo: (self boundsInWorld merge: aMorph boundsInWorld) with: self class extensionOffset.
	self updateScrollPane
