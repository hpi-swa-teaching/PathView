private
adjustSubmorphPositions
	| changedAnything newVerts ib mv |
	submorphs size < 2 ifTrue: [ ^false ].
	changedAnything := false.
	ib := self layoutBounds insetBy: (self borderWidth / 2).
	ib := { ib left. ib right } truncated.
	submorphs pairsDo: [ :m1 :m2 |
		m2 isLineMorph ifTrue: [
			mv := m2 vertices truncated.
			(mv first x ~~ ib first or: [ mv second x ~~ ib second ])
			ifTrue: [
				newVerts := { ib first @ m1 bottom. ib second @ m1 bottom } truncated.
				m2 setVertices: newVerts.
				changedAnything := true. ]]].
	^changedAnything
