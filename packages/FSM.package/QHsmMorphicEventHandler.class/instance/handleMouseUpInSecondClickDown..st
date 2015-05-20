state handlers
handleMouseUpInSecondClickDown: evt 
	self doubleClickTimedOut
		ifFalse: [ self doubleClick: event ]
		ifTrue: [ self click: event ].
	^self returnToIdleHistory