scrolling
scrollerMoved: anEvent
	"Move the scroller-viewport, take care to not move it over the boundaries of the contents."
	
	self scrollInsideBoundsBy: anEvent startPoint - anEvent position.