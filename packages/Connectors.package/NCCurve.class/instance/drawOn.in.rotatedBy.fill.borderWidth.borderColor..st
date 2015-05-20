drawing
drawOn: aCanvas in: aRectangle rotatedBy: rotation fill: fillColor borderWidth: bw borderColor: bc 
	aCanvas
		drawGeneralBezierShape: (self contoursTransformedFor: aRectangle rotation: rotation)
		color: fillColor
		borderWidth: bw
		borderColor: bc