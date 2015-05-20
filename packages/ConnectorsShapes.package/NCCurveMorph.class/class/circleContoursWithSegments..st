contours library
circleContoursWithSegments: numSegments
	"
	(NCCurveMorph withContours: (NCCurveMorph circleContoursWithSegments: 5)) extent: 101@101; openInHand
	"
	^self circleContoursWithSegments: numSegments radius: 100 offset: 50@50