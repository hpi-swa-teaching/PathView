connection-callbacks
nearestOrthogonalPointOn: m
	^m closestOrthogonalPointTo: (self nextVertexRelativeTo: m)
