actions
loadDiagrams
	| diagramsBin diagrams |
	(diagramsBin := zip membersMatching: (SPVMczWriter diagramsMember, '*')) ifNil: [^ self].
	diagrams := OrderedCollection new.
	diagramsBin do: [:d |
		diagrams add: ([SClassDiagram loadFromStream: d contentStream]
							on: Error
							do: [:err | self inform: 'Error loading a stored path view diagram'. nil])].
	version refinements
		at: SPVMczWriter diagramsMember
		put: diagrams.
