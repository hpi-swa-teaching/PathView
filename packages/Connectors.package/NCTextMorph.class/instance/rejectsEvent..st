event handling
rejectsEvent: anEvent
	self trackFocusFromEvent: anEvent.
	^(super rejectsEvent: anEvent)
		or: [ anEvent isKeyboard and: [ (self handlesKeyboard: anEvent) not ] ]