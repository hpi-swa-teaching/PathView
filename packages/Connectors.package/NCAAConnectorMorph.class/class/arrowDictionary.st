arrows
arrowDictionary
	^ArrowGlyphs ifNil: [
		ArrowGlyphs := Dictionary new.
		self initializeArrowDictionary ].