event handling
handlesKeyboard: anEvent

	anEvent keyValue == 27 ifTrue: [ ^true ].
	^super handlesKeyboard: anEvent