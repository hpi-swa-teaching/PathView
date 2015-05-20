stepping and presenter
step
	"Notify my handler's state machine of the step event."
	eventHandler ifNil: [ ^self stopStepping ].
	(eventHandler handleEvent: #step eventOrType: #step) 
		ifFalse: [self missedStepEvent].
