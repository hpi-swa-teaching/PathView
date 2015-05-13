drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas 
		fillRectangle: (self bounds bottom: self bounds origin y + 21) 
		fillStyle: self fillStyle 
		borderStyle: self borderStyle.