line end shapes
openArrowheadShape
	"NCLineEndConstraintMorph openArrowheadShape openInHand"
	"NCConnectorMorph newDirectionalAssociation openInHand"
	^(PolygonMorph vertices: { 0@0 . 6@15 . 12@0  }
		color: Color black
		borderWidth: 2
		borderColor: Color black)
			makeOpen;
			setProperty: #referencePosition toValue: 6@15;
			vResizing: #rigid;
			hResizing: #rigid;
			name: 'open arrowhead'