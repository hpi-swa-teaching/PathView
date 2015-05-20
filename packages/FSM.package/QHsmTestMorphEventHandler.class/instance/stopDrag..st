state handler actions
stopDrag: evt
	morph logger  nextPutAll: 'stopDrag'; cr; endEntry.
	^super stopDrag: evt