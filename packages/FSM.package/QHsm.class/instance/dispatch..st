running
dispatch: anEvent 
	"Traverse the state hierarchy starting from the currently active state.
	Advance up the hierarchy from substates to superstates until a state handler handles the event.
	Use an instVar to provide access to the transition: method.
	Answers the state that handled the event."

	| lastState |
	mySource := myState.
	[mySource notNil] whileTrue: 
			[lastState := mySource.
			mySource := mySource trigger: anEvent.
			self assert: [mySource isNil or: [lastState superstate = mySource]]
				descriptionBlock: [ 'can''t go from' , lastState asString , ' to ' 
						, mySource asString]].
	(anEvent eventType ~~ #empty and: [lastState ~= #Top]) 
		ifTrue: 
			[self 
				logEvent: anEvent
				type: anEvent eventType
				handlingState: lastState stateName].
	^lastState