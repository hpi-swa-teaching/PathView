event handling
mouseDown: anEvent
	anEvent yellowButtonPressed ifTrue: [ ^self yellowButtonActivity: anEvent shiftPressed ].
	anEvent blueButtonPressed ifTrue: [ ^super blueButtonDown: anEvent ].
	self isSticky ifFalse: [ self grabMorph: anEvent ]
