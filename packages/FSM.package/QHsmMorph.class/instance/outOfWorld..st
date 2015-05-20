initialization
outOfWorld: aWorld
	eventHandler ifNotNil: [
		self processDeferredEvents.
		self stopStepping.
		self eventHandler handleEvent: #outOfWorld.
		eventHandler := nil ].
	super outOfWorld: aWorld