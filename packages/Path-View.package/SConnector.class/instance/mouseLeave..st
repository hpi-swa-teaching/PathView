event handling-overrides
mouseLeave: anEvent
	
	toolbar ifNotNil: [ toolbar morphUnhovered ].
	super mouseLeave: anEvent.