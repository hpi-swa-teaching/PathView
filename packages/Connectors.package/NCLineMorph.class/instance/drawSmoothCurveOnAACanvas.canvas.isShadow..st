drawing
drawSmoothCurveOnAACanvas: aaCanvas canvas: aCanvas isShadow: isShadow 
	self class curveDebug ifTrue: [
		isShadow ifFalse: 
			[ self drawCurveDebugOn: aaCanvas] ].
	aaCanvas 
		drawGeneralBezierShape: self contours
		color: (isShadow ifTrue: [aCanvas shadowColor] ifFalse: [self fillStyle])
		borderWidth: self borderWidth
		borderColor: (isShadow 
				ifTrue: [aCanvas shadowColor]
				ifFalse: [self borderColor])
