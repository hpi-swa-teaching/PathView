connection-callbacks
nearestPointOn: m
	^m closestPointTo: (self point: self center relativeTo: m)