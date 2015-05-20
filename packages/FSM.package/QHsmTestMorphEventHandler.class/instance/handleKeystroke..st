events-default handling
handleKeystroke: evt
	morph logger  nextPutAll: 'keyStroke'; cr; endEntry.
	^super handleKeystroke: evt