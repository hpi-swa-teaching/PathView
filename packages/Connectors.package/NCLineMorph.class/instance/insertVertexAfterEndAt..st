editing
insertVertexAfterEndAt: position
	"insert another vertex, before first"

	self setVertices: (self vertices copyWith: position) asArray.
