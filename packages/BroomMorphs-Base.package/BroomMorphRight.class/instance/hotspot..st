accessing
hotspot: aPoint 
	| newBounds top bottom right |
	top := aPoint y - span min: bounds top.
	bottom := aPoint y + span max: bounds bottom.
	right := aPoint x max: start x.
	lastHotspot := hotspot.
	hotspot := right @ aPoint y.
	newBounds := Rectangle
				left: right - bounds width
				right: right
				top: top
				bottom: bottom.
	self bounds: newBounds