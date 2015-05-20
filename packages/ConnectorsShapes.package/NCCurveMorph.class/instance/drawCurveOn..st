drawing
drawCurveOn: aCanvas 

	(aCanvas asBalloonCanvas aaLevel: 4;
				 yourself)
				clipBy: (self bounds)
				during: [ :canvas |
			curve
				drawOn: canvas
				in: self curveBounds
				rotatedBy: self forwardDirection
				fill: (aCanvas isShadowDrawing
						ifTrue: [Color black]
						ifFalse: [self fillStyle])
				borderWidth: self borderWidth
				borderColor: self borderColor ]