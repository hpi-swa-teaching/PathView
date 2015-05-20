contours library
circleContours
	^self circleContoursWithSegments: 5
	"
	(NCCurveMorph withContours: (NCCurveMorph circleContours)) extent: 101@101; openInHand
	"
