drawing
drawOn: aCanvas fgColor: fgColor 
	| canvas |
	canvas := aCanvas asBalloonCanvas.
	canvas aaLevel: 4.
	canvas 
		drawGeneralBezierShape: self contours
		color: nil
		borderWidth: 1
		borderColor: fgColor.
