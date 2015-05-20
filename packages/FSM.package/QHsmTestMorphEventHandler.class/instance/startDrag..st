state handler actions
startDrag: evt
	morph logger  nextPutAll: 'startDrag'; cr; endEntry.
	^super startDrag: evt