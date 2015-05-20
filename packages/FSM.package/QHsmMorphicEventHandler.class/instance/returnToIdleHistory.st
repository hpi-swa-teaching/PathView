state handler actions
returnToIdleHistory
	"Idle history has been saved; transition back to it (and clear it)"
	| history |
	history := idleHistory ifNil: [ #Idle].
	idleHistory := nil.
	mySource ~= myState
		ifTrue: [self log: #newState items: {myState stateName. mySource stateName. history. 'idle history' }]
		ifFalse: [self log: #newState items: {myState stateName. history. 'idle history'}].
	^self newDynamicState: history.
