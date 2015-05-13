drawing
drawTitleOn: aCanvas

	| string object |
	object := self getObjectToExplore.
	string := self title, ': ',  object class asString, ' (',  object asString, ')'.
	aCanvas 
		drawString: string
		in: ((self position x + 2@self position y) 
			corner: ((self position x + self width - 2 - self class buttonWidth) @ 
				(self position y + self class buttonWidth))).