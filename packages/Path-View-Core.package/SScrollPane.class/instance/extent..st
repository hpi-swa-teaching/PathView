initialization
extent: aValue

	| old |
	old := self bounds.
	super extent: aValue.
	self containsDiagram ifTrue: 
		[self classDiagramMorph extendDiagramAreaFrom: old To: self bounds.]