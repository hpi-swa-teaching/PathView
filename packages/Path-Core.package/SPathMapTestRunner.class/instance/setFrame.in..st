building
setFrame: aRectangle in: aMorph

	| frame |
	frame := LayoutFrame new
				leftFraction: aRectangle left; 
				rightFraction: aRectangle right; 
				topFraction: aRectangle top; 
				bottomFraction: aRectangle bottom.
	aMorph layoutFrame: frame.
	aMorph hResizing: #spaceFill; vResizing: #spaceFill.