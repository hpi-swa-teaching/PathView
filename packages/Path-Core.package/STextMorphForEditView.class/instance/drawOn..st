drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self
		drawLineNumbersBorderOn: aCanvas;
		drawLineNumbersOn: aCanvas.