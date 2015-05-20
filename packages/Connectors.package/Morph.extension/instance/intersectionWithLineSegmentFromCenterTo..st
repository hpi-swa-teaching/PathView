*connectors-geometry
intersectionWithLineSegmentFromCenterTo: aPoint 
	^(self firstIntersectionWithLineFrom: aPoint to: self center)
		ifNil: [ self closestPointTo: aPoint ]