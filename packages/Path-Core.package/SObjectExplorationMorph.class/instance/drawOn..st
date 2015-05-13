drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	self title ifNil: [^ self].
	self 
		drawTitleRectangleOn: aCanvas;
		drawTitleOn: aCanvas.