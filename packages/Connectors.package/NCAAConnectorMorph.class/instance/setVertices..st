geometry
setVertices: newVertices 
	| verts |
	verts := Array streamContents: [ :s |
		s nextPut: (newVertices at: 1 ifAbsent: [ self halt ]).
		newVertices overlappingPairsDo: [ :v1 :v2 |
			v1 rounded = v2 rounded ifFalse: [ s nextPut: v2 rounded ]]].

	verts size >= 2 ifTrue: [
		self changed.
		line setVertices: verts.
		constraints first center: verts first.
		constraints second center: verts last.
		self changed; layoutChanged ].