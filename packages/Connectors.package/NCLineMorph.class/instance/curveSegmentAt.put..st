editing
curveSegmentAt: n put: aPoint
	| delta newVerts |
	(n between: 2 and: vertices size - 1) ifFalse: [ ^false ].
	delta := (self curveSegmentAt: n) - aPoint.
	newVerts := vertices copyFrom: n to: n + 1.
	delta := aPoint - newVerts average.
	newVerts := newVerts + delta.
	self setVertices: (vertices copyReplaceFrom: n to: n + 1 with: newVerts).
	^true
