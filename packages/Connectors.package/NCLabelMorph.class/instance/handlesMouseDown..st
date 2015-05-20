event handling
handlesMouseDown: anEvent
	"Make me movable with the shift pressed."
	self inPartsBin ifTrue: [ ^false ].
	^((anEvent shiftPressed) or: [ anEvent yellowButtonPressed])
