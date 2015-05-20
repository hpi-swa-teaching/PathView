event handling
enterWiringEnd
	self log: #debug items: {'enterWiringEnd'}.
	self isWiring: true.
	self newCursor: Cursor crossHair