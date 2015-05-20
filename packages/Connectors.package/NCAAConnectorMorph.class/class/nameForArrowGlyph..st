arrows
nameForArrowGlyph: anArrow
	self arrowDictionary keysAndValuesDo: [ :key :value |
		anArrow originalFirstContour = value originalFirstContour
			ifTrue: [ ^key ].
	].
	^#unknown