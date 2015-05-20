label
addLabel: aString
	| label |
	label := NCDisplayTextMorph new contents: aString; color: Color white; lock.
	self addMorphFront: label