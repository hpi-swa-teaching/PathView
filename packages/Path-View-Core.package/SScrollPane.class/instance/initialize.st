initialization
initialize
	
	super initialize.
	self scroller
		on: #startDrag send: #scrollerStartedDragging to: self;
		on: #mouseMove send: #scrollerMoved: to: self;
		onScaleChange: [ :oldScale :newScale | self scaleChangedTo: newScale ].