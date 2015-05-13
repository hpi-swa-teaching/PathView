event handling-overrides
mouseDownInConnected: anEvent
	"Connectors-library has some kind of own event-handling-mechanism. Most normal morphic-events don't work,
	must catch this special event.
	The normal mouseLeave: does work though."
	
	toolbar ifNotNil: [ toolbar appear ].
	super mouseDownInConnected: anEvent.  