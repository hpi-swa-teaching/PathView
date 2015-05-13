drawing
fillMorph: aMorph background: aColor on: aCanvas 
	aCanvas
		fillRectangle: (((scroller transformFrom: self)
				invertBoundsRect: aMorph bounds)
				intersect: scroller bounds)
		color: aColor