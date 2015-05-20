accessing
hotspot: aPoint 
	| newBounds top bottom left |
	top := aPoint y - span min: bounds top.
	bottom := aPoint y + span max: bounds bottom.
	left := aPoint x min: start x.
	lastHotspot := hotspot.
	hotspot := left @ aPoint y.
	newBounds := Rectangle
				left: left
				right: left  + bounds width
				top: top
				bottom: bottom.
	self bounds: newBounds