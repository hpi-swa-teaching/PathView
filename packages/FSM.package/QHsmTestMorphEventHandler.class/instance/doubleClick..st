state handler actions
doubleClick: evt
	morph logger  nextPutAll: 'doubleClick'; cr; endEntry.
	^super doubleClick: evt