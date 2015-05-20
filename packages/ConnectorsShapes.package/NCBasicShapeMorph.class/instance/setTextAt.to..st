text morphs-accessing
setTextAt: index to: aString 
	"Answers a Morph or nil"
	| morph |
	morph := self textMorphAt: index.
	morph
		ifNotNil: [morph isWrapped
				ifTrue: [morph contentsWrapped: aString]
				ifFalse: [morph contentsAsIs: aString].
		morph layoutChanged; fullBounds; changed. ].
	self layoutChanged; fullBounds.
	self adjustSubmorphPositions.
	^ morph
