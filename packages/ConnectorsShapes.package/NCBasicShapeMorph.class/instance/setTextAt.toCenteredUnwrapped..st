text morphs-accessing
setTextAt: index toCenteredUnwrapped: aString
	"Answers a Morph or nil"
	| morph |
	morph := self setTextAt: index toUnwrapped: aString.
	morph ifNil: [ ^nil ].
	morph hResizing: #shrinkWrap.
	morph owner listCentering: #center.
	^morph.
