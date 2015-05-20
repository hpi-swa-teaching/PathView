wiring
wireFreeEnd
	"Answer true if we have a free end and it has been attached to the Hand"
	self currentState ~~ #OneEndConnected ifTrue: [ ^false ].
	self trigger: #wireFrom withArguments: { (constraints detect: [ :ea | ea input isNil ]). ActiveHand lastEvent }.
	^true