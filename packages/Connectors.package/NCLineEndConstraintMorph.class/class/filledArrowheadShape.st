line end shapes
filledArrowheadShape
	"NCLineEndConstraintMorph filledArrowheadShape openInHand"

	^(PolygonMorph vertices: { 0@0 . 7@17 . 14@0 . 0@0 }
		color: Color black
		borderWidth: 0
		borderColor: Color black)
			setProperty: #referencePosition toValue: 7@17;
			vResizing: #rigid;
			hResizing: #rigid;
			name: 'filled arrowhead'