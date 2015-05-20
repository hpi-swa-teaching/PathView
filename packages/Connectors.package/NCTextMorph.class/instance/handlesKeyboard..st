event handling
handlesKeyboard: evt
	"Avoid stray keystrokes, especially from gestures."
	self trackFocusFromEvent: evt.
	^self hasFocus