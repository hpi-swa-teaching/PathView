event handling
exitWiringEnd
	self log: #debug items: {'exitWiringEnd'. self vertices }.
	self isWiring: false.
	self newCursor: Cursor normal