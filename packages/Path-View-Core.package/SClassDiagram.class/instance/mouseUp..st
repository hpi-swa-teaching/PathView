event handling
mouseUp: event
	"Stop both possible dragging-activities, no matter which one is actually running."
	
	super mouseUp: event.
	self stopSelection