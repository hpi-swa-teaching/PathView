as yet unclassified
loadDiagramsIn: aVersion for: aProject
	| diagrams |
	(diagrams := aVersion refinements
								at: SPVMczWriter diagramsMember
								ifAbsent: [])
		ifNil: [Transcript show: 'No diagrams in ', aVersion printString; cr. ^ self].
	diagrams do: [:diagram |
		aProject addViewNamed: diagram savedName with: diagram].
