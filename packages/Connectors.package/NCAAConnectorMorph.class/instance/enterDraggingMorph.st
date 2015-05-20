event handling
enterDraggingMorph
	self log: #debug items: {'enterDraggingMorph'}.
	fullBounds := nil.
	(self
			valueOfProperty: #justDuplicated
			ifAbsent: [false])
		ifTrue: [self removeProperty: #justDuplicated]