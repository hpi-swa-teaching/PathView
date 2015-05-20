line attachment
openForLineWidth: width 
	| newContour xOffset seg intersections i1 realBounds |
	width isZero 
		ifTrue: 
			[self contours at: 1 put: originalFirstContour * self scale + self offset.
			self updateBounds.
			^self].
	newContour := OrderedCollection 
				withAll: originalFirstContour * self scale + self offset.
	realBounds := Rectangle encompassing: newContour.
	xOffset := width / -2.0.
	seg := LineSegment fromPoints: (newContour copyFrom: 1 to: 3).
	intersections := seg 
				intersectionsWithLineFrom: xOffset @ realBounds bottom
				to: xOffset @ realBounds top.
	i1 := intersections at: 1 ifAbsent: [xOffset @ realBounds bottom].
	seg isBezier2Segment 
		ifFalse: [newContour := newContour copyFrom: 4 to: newContour size].
	newContour addAllFirst: { 
				i1.
				i1.
				newContour first}.
	xOffset := xOffset negated.
	seg := LineSegment 
				from: newContour last
				to: (newContour at: newContour size - 2)
				via: (newContour at: newContour size - 1).
	intersections := seg 
				intersectionsWithLineFrom: xOffset @ realBounds bottom
				to: xOffset @ realBounds top.
	i1 := intersections at: 1 ifAbsent: [xOffset @ realBounds bottom].
	seg isBezier2Segment 
		ifFalse: [newContour := newContour copyFrom: 1 to: newContour size - 3].
	newContour addAll: { 
				newContour last.
				i1.
				i1}.
	self contours at: 1 put: newContour asArray.
	self updateBounds