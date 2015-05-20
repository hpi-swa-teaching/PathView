event handling
keyStroke: anEvent
	"Handle a keystroke event.  The default response is to let my eventHandler, if any, handle it."
	anEvent keyValue == 27 ifTrue: [ ^ self yellowButtonActivity: anEvent shiftPressed ].
	^super keyStroke: anEvent
