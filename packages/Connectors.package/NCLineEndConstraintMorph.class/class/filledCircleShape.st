line end shapes
filledCircleShape
	"NCLineEndConstraintMorph filledCircleShape openInHand"

	^ CircleMorph new
		borderWidth: 0;
		color: Color black;
		extent: 12@12;
		setProperty: #originalExtent toValue: 12@12;
		setProperty: #originalWidth toValue: 2;
		rotationCenter: 0.5@1.0;
		lineAttachmentOffset: 0@-1;
		name: 'filled circle'