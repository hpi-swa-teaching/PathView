initialization
initializeFSM
	eventHandler ifNil: [
		eventHandler := self class eventHandlerClass eventHandlerFor: self ].
	eventHandler init.
