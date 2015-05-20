drawing
addText: text
	| ix |
	ix := super addText: text.
	(self textMorphAt: ix) margins: 4@0.
	self adjustSubmorphPositions.
	^ix
