layouting
setFrame: aRectangle offset: anotherRectangle in: aMorph
	
	^ self
		setLayoutFrame: (LayoutFrame fractions: aRectangle offsets: anotherRectangle)
		of: aMorph