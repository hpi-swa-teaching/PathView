text morphs-accessing
setTextAt: index toCenteredWrapped: aString
	"Answers a Morph or nil"
	| morph |
	morph := self setTextAt: index toWrapped: aString.
	morph ifNil: [ ^nil ].
	morph hResizing: #shrinkWrap.
	morph owner listCentering: #center.
	^morph.
