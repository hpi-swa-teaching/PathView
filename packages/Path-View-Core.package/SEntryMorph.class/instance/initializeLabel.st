initialization
initializeLabel
	
	(self labelCentered
		ifTrue: [
			self addMorph: (labelMorph := StringMorph contents: '') ]
		ifFalse: [
			labelMorph := indentationMorph labelMorph.
			self addMorph: indentationMorph ]).