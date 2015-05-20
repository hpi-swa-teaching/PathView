event handling
mouseDown: evt
	evt yellowButtonPressed  "First check for option (menu) click"
		ifTrue: [^ self yellowButtonActivity: evt shiftPressed ].
	super mouseDown: evt
