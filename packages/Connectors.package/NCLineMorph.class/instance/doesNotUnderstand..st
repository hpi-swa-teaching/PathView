error handling
doesNotUnderstand: aMessage
	"| failed |
	failed := false.
	(PolygonMorph includesSelector: aMessage selector) ifTrue: [
		[ NCLineMorph compile: (PolygonMorph sourceCodeAt: aMessage selector)
			classified: 'stolen from PM'
			notifying: nil ] on: Error do: [ :ex | failed := true ].
	].
	^failed
		ifFalse: [ aMessage sentTo: self ]
		ifTrue: [ super doesNotUnderstand: aMessage ]."
	^super doesNotUnderstand: aMessage
	