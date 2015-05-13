drawing
drawTitleRectangleOn: aCanvas

	| rect |
	rect := ((self position x - 1) @ self position y) 
			corner: ((self position x + self width) @ 
					(self position y + self class buttonWidth)).
	aCanvas 
		frameAndFillRectangle: rect 
		fillColor: self color 
		borderWidth: self class titleBorderWidth 
		borderColor: self class borderColor.