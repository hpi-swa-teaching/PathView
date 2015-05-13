drawing
drawRectangleOn: aCanvas in: aRectangle
	| rect |
	rect := Rectangle 
			origin: (aRectangle origin x - self class borderOffset) @ (aRectangle origin y)
			corner: (aRectangle origin x + self visibleWidth + self class borderOffset) @ (aRectangle corner y).
	aCanvas 
		frameAndFillRectangle: rect 
		fillColor: self getBackgroundColor 
		borderWidth: 0 
		borderColor: self class borderColor.