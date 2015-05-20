event handling
mouseDown: evt
	evt yellowButtonPressed  "First check for option (menu) click"
		ifTrue: [^ self yellowButtonActivity: evt shiftPressed ].
	evt shiftPressed
		ifTrue: [ ^evt hand grabMorph: self ].
	^super mouseDown: evt
