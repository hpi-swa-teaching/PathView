drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	aCanvas translucentImage: UiFugueIcons exclamationFrameIcon at: bounds origin.