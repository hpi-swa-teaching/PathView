running
logEvent: anEvent type: eventType handlingState: selector 
	anEvent ~= #empty 
		ifTrue: 
			[ Transcript
				print: myState;
				space;
				print: anEvent;
				space;
				print: selector;
				cr]