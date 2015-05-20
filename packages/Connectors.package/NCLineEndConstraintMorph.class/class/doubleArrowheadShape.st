line end shapes
doubleArrowheadShape
	"NCLineEndConstraintMorph doubleArrowheadShape openInHand"

	^(PolygonMorph vertices: { 0@0 . 7@9 . 14@0 . 7@9 . 7@15 . 0@6 . 7@15 . 14@6 }
		color: Color black
		borderWidth: 2
		borderColor: Color black)
			makeOpen;
			setProperty: #referencePosition toValue: 7@15;
			lineAttachmentOffset: (0@(-8/15)) asFloatPoint;
			name: 'double arrowhead'