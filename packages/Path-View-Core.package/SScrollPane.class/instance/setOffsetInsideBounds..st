scrolling
setOffsetInsideBounds: anOffset
	"Set the scroller-offset directly to anOffset, but also scroll the scrollbars and make sure that the viewport does not leave the allowed boundaries.
	This does not scroll by anOffset, but directly sets it (although the scrollBy: method is utilized for that)."
	
	self scrollInsideBoundsBy: anOffset - self scroller offset