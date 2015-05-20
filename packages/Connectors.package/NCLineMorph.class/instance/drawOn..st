drawing
drawOn: aCanvas 
	| aaCanvas isShadow |
	aaCanvas := aCanvas asBalloonCanvas.
	isShadow := aCanvas isShadowDrawing.
	(aaCanvas isBalloonCanvas or: [ aaCanvas isPostscriptCanvas ])
		ifTrue: 
			[aaCanvas
				aaLevel: 4;
				deferred: true.
			smoothCurve 
				ifTrue: 
					[self 
						drawSmoothCurveOnAACanvas: aaCanvas
						canvas: aCanvas
						isShadow: isShadow]
				ifFalse: 
					[self 
						drawSegmentedCurveOnAACanvas: aaCanvas
						canvas: aCanvas
						isShadow: isShadow].
			aaCanvas flush]
		ifFalse: 
			[aCanvas 
				drawPolygon: self contourPoints
				color: self fillStyle
				borderWidth: self lineWidth asInteger
				borderColor: (isShadow 
						ifTrue: [aCanvas shadowColor]
						ifFalse: [self borderColor])]