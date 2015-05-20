event handling
click: evt
	self trackFocusFromEvent: evt.
	evt wasHandled: true.