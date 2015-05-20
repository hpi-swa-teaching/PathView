state handlers
handleMouseUpInFirstClickDown: evt 
	self click: event.
	^self doubleClickTimedOut
		ifTrue: [ self returnToIdleHistory ]
		ifFalse: [ self newState:  #FirstClickUp]