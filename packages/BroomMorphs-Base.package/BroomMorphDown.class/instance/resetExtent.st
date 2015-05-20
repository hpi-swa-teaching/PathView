drawing
resetExtent
	| newBounds |
	newBounds := 0@0 extent: (2*span) @ (12 + width).
	self bounds: (newBounds align: newBounds bottomCenter with: hotspot)