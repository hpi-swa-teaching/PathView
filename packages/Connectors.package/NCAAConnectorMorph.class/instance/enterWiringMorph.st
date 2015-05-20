event handling
enterWiringMorph
	self log: #debug items: {'enterWiringMorph'}.
	self isWiring: true.
	Cursor crossHair show