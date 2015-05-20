event handling-overrides
suspendEventHandler
	"Put my event handler away for a while, perhaps because I'm being 
	put in a parts bin."
	self eventHandler
		ifNotNil: [ self processDeferredEvents.
			self stopStepping.
			self eventHandler handleEvent: #suspendEventHandler.
			self setProperty: #suspendedEventHandler toValue: self eventHandler.
			eventHandler := nil].
	submorphs
		do: [:m | m suspendEventHandler]