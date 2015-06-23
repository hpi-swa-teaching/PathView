instance creation
forMorph: aClassDiagramMorph
	
	| instance |
	instance := self new.
	instance scroller addMorph: aClassDiagramMorph.
	instance classDiagramMorph: aClassDiagramMorph.
	instance containsDiagram: true.
	aClassDiagramMorph scrollPane: instance.
	^ instance