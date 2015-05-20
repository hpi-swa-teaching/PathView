accessing
hotspot: aPoint 
	| left right bottom newBounds |
	left := aPoint x - span min: bounds left.
	right := aPoint x + span max: bounds right.
	bottom := aPoint y max: start y.
	lastHotspot := hotspot.
	hotspot := aPoint x @ bottom.
	newBounds := Rectangle
				left: left
				right: right
				top: bottom - bounds height
				bottom: bottom.
	self bounds: newBounds.
