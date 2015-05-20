logging
stopLoggingSelectedEvent
	| event |
	event := (SelectionMenu selections: (self loggingTypes asSortedCollection)) startUp.
	event ifNil: [ ^self ].
	self stopLogging: event