event handling
mouseDown: evt 
	evt yellowButtonPressed ifTrue: [ ^ self yellowButtonActivity: evt shiftPressed ].
	^super mouseDown: evt