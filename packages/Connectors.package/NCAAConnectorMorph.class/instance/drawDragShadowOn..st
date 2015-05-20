drop shadows
drawDragShadowOn: aCanvas 
	aCanvas translateBy: self dragShadowOffset
		during: 
			[:shadowCanvas | 
			shadowCanvas shadowColor: self dragShadowColor.
			(shadowCanvas isVisible: self outerBounds) 
				ifTrue: [
					self withTransparentConstraintsDo: [
						self drawOn: shadowCanvas.
						self drawSubmorphsOn: shadowCanvas ] ]]