event handling
missedStepEvent
	"I got a step event, but it wasn't handled.
	The default response is to stop stepping; entry to a state that can handle step events should call #startStepping."
	self log: #missedStepEvent items: {}.
	self stopStepping