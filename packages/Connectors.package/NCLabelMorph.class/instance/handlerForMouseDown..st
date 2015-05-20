event handling
handlerForMouseDown: anEvent
	"Make me movable with the shift pressed."
	self inPartsBin ifTrue: [ ^nil ].
	((anEvent shiftPressed) or: [ anEvent yellowButtonPressed])
		ifTrue: [ ^self ].
	^super handlerForMouseDown: anEvent
