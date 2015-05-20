line end shapes
closedArrowheadShape
	"NCLineEndConstraintMorph closedArrowheadShape openInHand"

	^(self filledArrowheadShape)
			makeOpen;
			borderWidth: 2;
			name: 'closed arrowhead';
			lineAttachmentOffset: 0@-1