instance creation
pointingHand
	"
	NCCurveMorph pointingHand openInHand
	"
	^(self withContours: self pointingHandContours named: '') extent: 60@100; yourself