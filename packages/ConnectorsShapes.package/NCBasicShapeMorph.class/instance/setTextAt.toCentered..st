text morphs-accessing
setTextAt: index toCentered: aString
	"Answers a Morph or nil"
	| morph |
	morph := self setTextAt: index to: aString.
	morph centered.
	^morph.
