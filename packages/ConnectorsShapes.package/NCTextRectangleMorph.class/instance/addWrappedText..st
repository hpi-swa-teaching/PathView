text morphs-add/remove
addWrappedText: aStringOrText 
	"Answers a text index"

	| textMorph |
	textMorph := self createWrappedTextMorph: aStringOrText.
	self addMorphBack: textMorph.
	self adjustSubmorphPositions.
	^self textMorphs size
