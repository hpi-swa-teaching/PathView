editing
verticesAt: n put: newPoint
	| index |
	index := (n min: vertices size) max: 1.
	self setVertices: (vertices copy at: index put: newPoint; yourself).
