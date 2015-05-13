event handling
mouseEnter: event

	super mouseEnter: event.
	self labelMorph heading: -90.
	self labelMorph owner position: (self position x - (self labelMorph height) - 2) @ (self position y - 2).