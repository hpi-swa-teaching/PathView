drawing
drawOn: aCanvas 
	super drawOn: aCanvas.
	aCanvas isShadowDrawing
		ifTrue: [^ self].
	self hasFocus
		ifTrue: [aCanvas
				frameRectangle: (self fullBounds insetBy: 0)
				color: Preferences keyboardFocusColor]