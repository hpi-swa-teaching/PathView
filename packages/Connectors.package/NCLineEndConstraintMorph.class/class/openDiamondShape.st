line end shapes
openDiamondShape
	"NCLineEndConstraintMorph openDiamondShape openInHand"

	^self filledDiamondShape
		makeOpen;
		borderWidth: 2;
		name: 'open diamond'