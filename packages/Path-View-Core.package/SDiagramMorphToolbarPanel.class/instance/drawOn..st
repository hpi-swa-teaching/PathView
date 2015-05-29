drawing
drawOn: aCanvas
	
	(self submorphs noneSatisfy: #visible) ifTrue: [ ^ self ].
	aCanvas
		fillRoundRect: self panelBounds 
		radius: 5
		fillStyle: (SolidFillStyle color: (Color black alpha: 0.5)).