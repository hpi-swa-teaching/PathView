accessing
drawOn: aCanvas
	aCanvas 
		frameRectangle: self bounds 
		color: Color black.
	self checked
		ifTrue: [aCanvas 
					fillRectangle: (self bounds expandBy: -2)
					color: Color black].
		