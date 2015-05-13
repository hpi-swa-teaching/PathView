morphic
computeMaxWidthOfSiblings

	| max |
	max := 0.
	self withSiblingsDo: [:each |  max := each minWidth max: max].
	self withPreviousSiblingsDo: [:each |  max := each minWidth max: max].
	^ max