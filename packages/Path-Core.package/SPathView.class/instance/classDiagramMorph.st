building
classDiagramMorph
	
	^ classDiagramMorph ifNil: [
		classDiagramMorph := SClassDiagram new.
		self initialDiagramMorph ifNotNilDo: [ :classMorph |
			classDiagramMorph addMorph: classMorph.
			classMorph optionallyOpenConnectors ].
		classDiagramMorph ]