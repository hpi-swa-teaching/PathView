state handler actions
click: evt
	morph logger nextPutAll: 'click'; cr; endEntry.
	^super click: evt