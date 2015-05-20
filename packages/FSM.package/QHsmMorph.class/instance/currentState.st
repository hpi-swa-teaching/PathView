accessing
currentState
	^eventHandler ifNotNil: [ eventHandler currentState stateName ]
		ifNil: [ 'suspended' ]