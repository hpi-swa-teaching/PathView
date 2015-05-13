layouting
setFrame: aRectangle in: aMorph
	
	^ self
		setLayoutFrame: (LayoutFrame fractions: aRectangle)
		of: aMorph