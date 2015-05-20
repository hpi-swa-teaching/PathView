event handling
mouseLeave: evt
	Preferences mouseOverForKeyboardFocus ifTrue:
		[ evt hand releaseKeyboardFocus: label ]
