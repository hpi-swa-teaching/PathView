initialization
initialize
	
	super initialize.

	self containsDiagram: false.
	self scroller
		on: #startDrag send: #scrollerStartedDragging to: self;
		on: #mouseMove send: #scrollerMoved: to: self;
		onScaleChange: [ :oldScale :newScale | self scaleChangedTo: newScale ].