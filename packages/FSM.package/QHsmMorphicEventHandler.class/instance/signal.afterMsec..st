events
signal: anEvent afterMsec: timeoutInMsec
	"Schedule a morphic alarm to fire after timeInMsec milliseconds that will queue an event on my morph's event queue, to be processed during its step method."
	morph world ifNotNilDo: [ :w |
		w addAlarm: #deferEvent:
			withArguments: { anEvent }
			for: self
			at: Time millisecondClockValue + timeoutInMsec ]