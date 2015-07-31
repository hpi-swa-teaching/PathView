zooming
zoomToScale: aNumber
	"After setting the scale-value, move the viewport so that zooming in/out does not change the viewport-center."

	| oldCenter |
	oldCenter := self getUnScaledCenter.
	self scroller scale: aNumber.
	self centerAround: oldCenter
