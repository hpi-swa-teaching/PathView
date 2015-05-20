state handlers
handleMouseDownInFirstClickUp: evt 
	^self doubleClickTimedOut
		ifTrue: [ self doubleClickTimeout: evt. self returnToIdleHistory ]
		ifFalse: [ self newState: #SecondClickDown]