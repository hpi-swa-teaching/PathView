logging
startLoggingSelectedEvent
	| event |
	event := FillInTheBlank request: 'start logging which event?'.
	(event isNil or: [ event isEmpty ]) ifTrue: [ ^self ].
	self startLogging: event