line end shapes
crowsFootShape
	"NCLineEndConstraintMorph crowsFootShape openInHand"

	^(PolygonMorph vertices: { 0@15 . 7@0. 14@15  }
		color: Color black
		borderWidth: 2
		borderColor: Color black)
			makeOpen;
			setProperty: #referencePosition toValue: 7@16;
			lineAttachmentOffset: -0.01@0;
			vResizing: #rigid;
			hResizing: #rigid;
			name: 'crows foot'
