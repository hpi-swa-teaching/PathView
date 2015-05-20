state handlers
stateWaitingForDoubleClickWithMouseDown: evt
	evt == #init ifTrue: [^self newInitialState: #FirstClickDown].

	(#(mouseDown mouseUp mouseMove) includes: evt)
		ifFalse: [^self state: #WaitingForDoubleClick].

	evt == #mouseUp ifTrue: [^ self returnToIdleHistory ].
	self isDrag 
		ifTrue: 
			[self doubleClickTimedOut ifFalse: [self doubleClickTimeout: event].
			^self newState: #Dragging].
	(self doubleClickTimedOut 
		and: [self currentState ~= #WaitingForDoubleClickWithMouseDown]) 
			ifTrue: 
				[self doubleClickTimeout: event.
				^self newState: #WaitingForDoubleClickWithMouseDown].
	^self state: #WaitingForDoubleClick