events
deferEvent: anEvent
	"Defer anEvent for later processing."
	(eventQueue ifNil: [ eventQueue := SharedQueue new ]) nextPut: anEvent.
