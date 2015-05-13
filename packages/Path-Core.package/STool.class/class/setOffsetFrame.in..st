layouting
setOffsetFrame: aRectangle in: aMorph
	
	^ self
		setLayoutFrame: (LayoutFrame offsets: aRectangle)
		of: aMorph