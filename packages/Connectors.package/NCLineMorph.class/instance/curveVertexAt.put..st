editing
curveVertexAt: index put: aPoint
	"Set the point on the visible curve corresponding to the given vertex."
	| seg error actual attempts |
	(index between: 1 and: vertices size) ifFalse: [ ^false ].
	(smoothCurve not  or: [ index = 1 or: [ (index = vertices size) ]])
		ifTrue: [ self verticesAt: index put: aPoint. ^true ].
	attempts := 0.
	[attempts < 10] whileTrue: [
		seg := (self segments select: [ :ea | ea isBezier2Segment ]) at: index - 1 ifAbsent: [ ^false ].
		actual := seg valueAt: (seg start dist: seg via) / seg length.
		error := aPoint - actual.
		error r < 1 ifTrue: [ ^true ].
		self verticesAt: index put: (vertices at: index) + error.
		attempts := attempts + 1.
	].
	^false