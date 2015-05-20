initialization
intoWorld: aWorld
	"Ensure that we don't make an event handler if it's not wanted."
	aWorld ifNotNil: [ self inPartsBin ifFalse: [ self assuredEventHandler ]].
	^super intoWorld: aWorld.