stepping and presenter
processDeferredEvents
	"I may have some queued events. Process them."
	eventHandler processDeferredEvents.
	self stopSteppingSelector: #processDeferredEvents