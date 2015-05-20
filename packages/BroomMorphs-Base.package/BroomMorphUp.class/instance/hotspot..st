accessing
hotspot: aPoint 
	| left right newBounds top |
	left := aPoint x - span min: bounds left.
	right := aPoint x + span max: bounds right.
	top := aPoint y min: start y.
	lastHotspot := hotspot.
	hotspot := aPoint x @ top.
	newBounds := Rectangle
				left: left
				right: right
				top: top
				bottom: top + bounds height.
	self bounds: newBounds