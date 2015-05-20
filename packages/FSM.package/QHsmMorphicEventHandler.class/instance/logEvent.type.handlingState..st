logging
logEvent: evt type: evtType handlingState: selector 
	| logType eventOrType myStateName |
	logType := evtType == #step
				ifTrue: [#stepEventHandled]
				ifFalse: [#eventHandled].
	(#(mouseMove mouseOver) includes: evtType) ifTrue: [ logType := #moveEventHandled ].
	myStateName := myState stateName.
	eventOrType := evt == evtType
				ifTrue: [event]
				ifFalse: [evtType].
	myStateName ~~ selector
		ifTrue: [self log: logType items: {evt. eventOrType. selector. '[' , myStateName , ']'}]
		ifFalse: [self log: logType items: {evt. eventOrType. selector}]