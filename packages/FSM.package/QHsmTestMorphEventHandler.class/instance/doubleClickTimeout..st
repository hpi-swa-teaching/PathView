state handler actions
doubleClickTimeout: evt
	morph logger  nextPutAll: 'doubleClickTimeout'; cr; endEntry.
	^super doubleClickTimeout: evt