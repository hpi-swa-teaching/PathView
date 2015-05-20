events-default handling
handleMouseUp: evt
	morph logger  nextPutAll: 'mouseUp'; cr; endEntry.
	^super handleMouseUp: evt