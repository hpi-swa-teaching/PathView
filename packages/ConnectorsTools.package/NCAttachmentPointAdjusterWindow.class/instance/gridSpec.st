gridding
gridSpec
	"shift this so that when it's added to my position, we end up in sync"
	^self valueOfProperty: #gridSpec ifAbsent: [
		| pu offset |
		pu := self pasteUpMorph ifNil: [ ^super gridSpec ].
		pu gridSpec.
	]