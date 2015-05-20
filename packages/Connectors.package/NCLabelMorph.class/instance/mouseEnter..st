event handling
mouseEnter: evt
	label isLocked ifFalse: [
		Preferences mouseOverForKeyboardFocus ifTrue:
			[ evt hand newKeyboardFocus: label ].
	]
