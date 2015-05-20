arrows
clearArrowDictionary
	ArrowGlyphs ifNil: [ ^ArrowGlyphs := Dictionary new ].
	ArrowGlyphs keysAndValuesRemove: [ :k :v | true ];
		changed: #arrowsChanged.
