accessing
resetExtent
	| newBounds |
	newBounds := 0@0 extent: (12 + width) @ (2*span).
	self bounds: (newBounds align: newBounds rightCenter with: hotspot)