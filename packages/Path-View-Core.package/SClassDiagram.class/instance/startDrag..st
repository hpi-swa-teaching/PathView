event handling
startDrag: anEvent
	
	anEvent redButtonPressed ifTrue: [ ^ self startSelectionAt: anEvent position ].