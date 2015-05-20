geometry
borderPoints
	| segOffs b1 b2 cpts |
	line isCurve ifTrue: [ ^self bezierBorderPoints ].
	cpts := line contours first.
	b1 := LineSegment from: (cpts at: segmentIndex)
		to: (cpts at: segmentIndex + 1).
	cpts := line contours third.
	segOffs := cpts size - segmentIndex.
	b2 := LineSegment from: (cpts at: segOffs + 1)
		to: (cpts at: segOffs).
	^{ b2 valueAt: minT. b1 valueAt: minT }
