event handling
handlesMouseDown: event
	self isExpanded
		ifTrue: [^ self iconRectangle containsPoint: event cursorPoint]
		ifFalse: [^ self fullBounds containsPoint: event cursorPoint]