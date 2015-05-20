drawing
addTextBlock: text
	| ix |
	ix := super addTextBlock: text.
	(self textMorphAt: ix) margins: 4@0.
	self adjustSubmorphPositions.
	^ix
