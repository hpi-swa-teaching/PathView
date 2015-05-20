text morphs-accessing
setTextAt: index toUnwrapped: aString
	"Answers a Morph or nil"
	| morph |
	morph := self textMorphAt: index.
	morph ifNotNil: [ morph contentsAsIs: aString ].
	self adjustSubmorphPositions.
	^morph.
