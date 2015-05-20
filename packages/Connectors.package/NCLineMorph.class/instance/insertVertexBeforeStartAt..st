editing
insertVertexBeforeStartAt: position
	"insert another vertex, before first"

	self setVertices: ({ position }, self vertices) asArray.
