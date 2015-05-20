event handling
trackFocusFromEvent: evt
	evt hand keyboardFocus == self ifFalse: [
		self hasFocus ifTrue: [ self highlightRectChanged. self releaseEditor ]].