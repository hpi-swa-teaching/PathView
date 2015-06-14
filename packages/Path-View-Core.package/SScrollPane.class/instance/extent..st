initialization
extent: aValue

	super extent: aValue.
	self containsDiagram ifTrue: 
		[self classDiagramMorph extendDiagramAreaTo: self bounds.]