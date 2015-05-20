state handlers
stateIdle: evt 
	evt == #mouseDown ifTrue: [
		event blueButtonPressed ifTrue: [ morph blueButtonDown: event. ^nil ].
		^self newState: #WaitingForDoubleClick ].
	"Save history for return from WaitingForDoubleClick"
	evt == #exit ifTrue: [ self saveIdleHistory. ^nil ].
	^self global