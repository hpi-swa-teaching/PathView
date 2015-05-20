instance creation
circle
	"NCCurveMorph circle openInHand"
	^(self withContours: (self circleContours) named: 'Circle') extent: 101@101; yourself