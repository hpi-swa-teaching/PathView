editing
removeVertex: aVertex
	^self setVertices: (self vertices copyWithout: aVertex)