geometry
layoutLineMorphs
	| changedAnything newVerts |
	submorphs size < 2 ifTrue: [ ^false ].
	changedAnything := false.
	submorphs pairsDo: [ :m1 :m2 |
		m2 isLineMorph ifTrue: [ 
			newVerts := {
			(self firstIntersectionWithLineFrom: 
			 bounds left @ m1 bottom to: bounds right @ m1 bottom) ifNil: [ bounds left @ m1 bottom ].
			 (self firstIntersectionWithLineFrom: bounds right @ m1 bottom to: bounds left @ m1 bottom) ifNil: [ bounds right @ m1 bottom ] }.
			m2 vertices = newVerts ifFalse: [ m2 setVertices: newVerts. changedAnything := true ] ]].
	^changedAnything
