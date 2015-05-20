running
dispatch: anEvent
	| originalState handlerState  |
	originalState := myState.
	Transcript nextPutAll: 'State: '; print: myState stateName;
		nextPutAll: ' Event: '; print: anEvent; cr.
	handlerState := super dispatch: anEvent.
	Transcript nextPutAll: 'Handler: '; print: handlerState.
	myState ~= originalState ifTrue: [ Transcript nextPutAll: ' NewState: '; print: myState ].
	Transcript cr; endEntry.
	transitions addLast: { originalState. anEvent. myState }.
	^handlerState.