geometry
layoutLineMorphs
	| changedAnything newVerts |
	submorphs size < 2 ifTrue: [ ^false ].
	changedAnything := false.
	submorphs pairsDo: [ :m1 :m2 |
		m2 isLineMorph ifTrue: [ 
			newVerts := { bounds left @ m1 bottom. bounds right @ m1 bottom }.
			m2 vertices = newVerts ifFalse: [ m2 setVertices: newVerts. changedAnything := true ] ]].
	^changedAnything
