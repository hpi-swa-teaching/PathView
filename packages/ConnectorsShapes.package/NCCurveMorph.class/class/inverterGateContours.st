contours library
inverterGateContours
	"
	(NCCurveMorph withContours: NCCurveMorph inverterGateContours) openInHand
	"
	^(OrderedCollection withAll: self bufferGateContours)
		addAllLast: (self circleContoursWithSegments: 5 radius: 10 offset: 100@50);
		yourself
