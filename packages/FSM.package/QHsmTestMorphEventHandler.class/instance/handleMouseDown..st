events-default handling
handleMouseDown: evt
	morph logger  nextPutAll: 'mouseDown'; cr; endEntry.
	^super handleMouseDown: evt