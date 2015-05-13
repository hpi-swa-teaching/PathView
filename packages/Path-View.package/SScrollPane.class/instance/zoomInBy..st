zooming
zoomInBy: aNumber
	"This has the functionality of TransformationMorph >> adjustAfter:, subclassing SScroller from TransformationMorph instead of TransformMorph did not work.
	After setting the scale-value, move the viewport so that zooming in/out does not change the viewport-center."
	
	| oldCenter |
	oldCenter := (self scroller offset + (self scroller extent / 2)) / self scroller scale.
	self scroller scale: self scroller scale + aNumber.
	self centerAround: oldCenter.