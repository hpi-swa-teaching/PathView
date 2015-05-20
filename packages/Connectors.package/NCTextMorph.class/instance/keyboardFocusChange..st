editing
keyboardFocusChange: aBoolean

	aBoolean ifFalse: [
		(self hasFocus and: [ self acceptOnFocusLoss ])
			ifTrue: [ self acceptContents ].
		self releaseEditor ].
	super keyboardFocusChange: aBoolean.
