scrolling
scrollInsideBoundsBy: offset
	"Scroll by anOffset, but make sure, that the viewport does not leave the allowed bounds."
	
	| newCenter centerRectangle |
	newCenter := self scroller center + offset.
	centerRectangle := self scroller submorphBounds insetBy: self scroller extent / 2.
	(centerRectangle containsPoint: newCenter)
		ifFalse: [ newCenter := centerRectangle pointNearestTo: newCenter ].
	self scrollBy: self scroller center - newCenter