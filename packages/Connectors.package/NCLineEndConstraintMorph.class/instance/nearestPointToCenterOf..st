connection-callbacks
nearestPointToCenterOf: m
	^m intersectionWithLineSegmentFromCenterTo: (self nextVertexRelativeTo: m).