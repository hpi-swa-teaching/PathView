state handlers
stateGlobal: evt 
	^evt == #init 
		ifTrue: [self newInitialState: #Idle]
		ifFalse: [self top]