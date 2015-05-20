connection-callbacks
nearestPointToCenterOf: m
	^m intersectionWithLineSegmentFromCenterTo: (self point: self center relativeTo: m)