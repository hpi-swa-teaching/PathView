as yet unclassified
mergeDiagramsIn: aVersion for: aProject
	| diagrams |
	(diagrams := aVersion refinements
								at: SPVMczWriter diagramsMember
								ifAbsent: [])
		ifNil: [Transcript show: 'No diagrams in ', aVersion printString; cr. ^ self].
	diagrams do: [:diagram |
		(aProject viewNamed: diagram savedName)
			ifNil: [aProject addViewNamed: diagram savedName with: diagram]
			ifNotNil: [(self confirm: 'Load new diagram ', diagram savedName, '?')
						ifTrue: [aProject
								addViewNamed: diagram 
								savedName with: diagram]]].
