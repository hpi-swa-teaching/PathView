event handling
mouseEnter: event

	super mouseEnter: event.
	self labelMorph position: self position x @ (self position y + self height).