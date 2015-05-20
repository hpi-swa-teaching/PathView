editing
mouseDown: evt 
	self trackFocusFromEvent: evt.

	(evt hand keyboardFocus == self)
		ifTrue: [^ super mouseDown: evt].

	evt yellowButtonPressed ifTrue: [ ^ self yellowButtonActivity: evt shiftPressed ].

	evt hand waitForClicksOrDrag: self event: evt.
	evt wasHandled: true