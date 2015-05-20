geometry
removeShortEndSegmentsStepping: stepBlock
	| v1 v2 n minLength |
	minLength := 30.
	
	(n := self vertices size) > 2 ifTrue: [
		stepBlock value.
		v1 := self vertexAt: 1.
		v2 := self vertexAt: 2.
		(v1 dist: v2) < minLength ifTrue: [ self removeVertex: v2 ].
	].
	(n := self vertices size) > 2 ifTrue: [
		stepBlock value.
		v1 := self vertexAt: n.
		v2 := self vertexAt: n-1.
		(v1 dist: v2) < minLength ifTrue: [ self removeVertex: v2 ].
	].
	self vertices size > 2 ifTrue: [ self reduceVertices ].
	stepBlock value.
