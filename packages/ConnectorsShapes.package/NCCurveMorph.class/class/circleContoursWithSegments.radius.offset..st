contours library
circleContoursWithSegments: numSegments radius: radius offset: offset
	"
	(NCCurveMorph withContours: (NCCurveMorph circleContoursWithSegments: 5)) extent: 101@101; openInHand
	"
	| verts contours seg  |
	verts := self polygonVerticesForCircleRadius: radius usingPoints: numSegments * 2.
	contours := OrderedCollection new.
	1 to: verts size by: 2 do: [ :i |
		seg := Bezier2Segment from: (verts at: i) to: (verts atWrap: i + 2) withMidPoint: (verts atWrap: i + 1).
		contours add: (seg controlPoints + offset).
	].
	^contours