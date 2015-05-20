event handling
handlesMouseDown: anEvent
	anEvent yellowButtonPressed ifTrue: [ ^true ].
	^super handlesMouseDown: anEvent