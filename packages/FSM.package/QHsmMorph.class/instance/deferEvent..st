event handling
deferEvent: anEvent
	"Defer anEvent for later processing."
	self log: #deferEvent items: { anEvent }.
	self assuredEventHandler deferEvent: anEvent.
	self startStepping: #processDeferredEvents
		at: Time millisecondClockValue
		arguments: EmptyArray
		stepTime: 10
