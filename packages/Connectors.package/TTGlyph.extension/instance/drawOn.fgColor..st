*connectors
drawOn: aCanvas fgColor: fgColor 
	| canvas |
	canvas := aCanvas asBalloonCanvas.
	canvas aaLevel: 4.
	canvas 
		drawGeneralBezierShape: self contours
		color: fgColor
		borderWidth: 0
		borderColor: fgColor.
