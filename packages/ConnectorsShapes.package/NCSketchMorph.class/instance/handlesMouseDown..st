event handling
handlesMouseDown: anEvent
	"Make me movable with the shift pressed."
	anEvent yellowButtonPressed ifTrue: [ ^true ].
	^super handlesMouseDown: anEvent