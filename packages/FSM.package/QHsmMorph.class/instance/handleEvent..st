TODO
handleEvent: anEvent
	eventHandler ifNil: [ ^super handleEvent: anEvent ].
	eventHandler processDeferredEvents.
	eventHandler handleEvent: anEvent.
	eventHandler ifNotNil: [ eventHandler processDeferredEvents ].