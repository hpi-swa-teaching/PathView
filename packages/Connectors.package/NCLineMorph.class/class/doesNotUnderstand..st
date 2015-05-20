error handling
doesNotUnderstand: aMessage
	"| failed |
	failed := false.
	(PolygonMorph class includesSelector: aMessage selector) ifTrue: [
		[ self class compile: (PolygonMorph class sourceCodeAt: aMessage selector)
			classified: 'stolen from PM'
			notifying: nil ] on: Error do: [ :ex | failed := true ].
	].
	^failed
		ifFalse: [ aMessage sentTo: self ]
		ifTrue: [ super doesNotUnderstand: aMessage ]."
	
	^super doesNotUnderstand: aMessage