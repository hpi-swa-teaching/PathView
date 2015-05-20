event handling-overrides
restoreSuspendedEventHandler
	| savedHandler |
	(savedHandler := self valueOfProperty: #suspendedEventHandler) ifNotNil:
		[ eventHandler := savedHandler.
		self removeProperty: #suspendedEventHandler.
		self trigger: #restoreSuspendedEventHandler.
		self processDeferredEvents ].
	submorphs do: [:m | m restoreSuspendedEventHandler]
