line end shapes
junctionDotShape
	"NCLineEndConstraintMorph junctionDotShape openInHand"

	^ CircleMorph new
		borderWidth: 0;
		color: Color black;
		extent: 8@8;
		setProperty: #originalExtent toValue: 8@8;
		setProperty: #originalWidth toValue: 2;
		rotationCenter: 0.5@0.5;
		lineAttachmentOffset: 0@0;
		name: 'junction dot'