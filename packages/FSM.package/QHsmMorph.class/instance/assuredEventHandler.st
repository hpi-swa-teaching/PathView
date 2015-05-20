accessing
assuredEventHandler
	^eventHandler ifNil: [ self initializeFSM. eventHandler ]