events
mouseDown: evt
	triggerEventType := evt type.
	evt yellowButtonPressed  "First check for option (menu) click"
		ifTrue: [^ self yellowButtonActivity: evt shiftPressed ].
	self eventHandler ifNotNil:
		[self eventHandler mouseDown: evt fromMorph: self].		"from Morph"
	oldColor := self fillStyle. 
	self updateVisualState: evt.
	evt hand waitForClicksOrDrag: self event: evt
