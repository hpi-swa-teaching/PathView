drawing
drawOn: aCanvas
	aCanvas frameAndFillRectangle: self bounds
		fillColor: self fillStyle
		borderWidth: 1
		borderColor: self fillStyle asColor muchDarker