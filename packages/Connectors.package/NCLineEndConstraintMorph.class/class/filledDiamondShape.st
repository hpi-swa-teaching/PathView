line end shapes
filledDiamondShape
	"NCLineEndConstraintMorph filledDiamondShape openInHand"

	^(PolygonMorph vertices: { 6@0 . 12@11 . 6@22 . 0@12 . 6@0 }
		color: Color black
		borderWidth: 0
		borderColor: Color black)
			setProperty: #referencePosition toValue: 6@22;
			lineAttachmentOffset: -0.01@-0.95;
			name: 'filled diamond'