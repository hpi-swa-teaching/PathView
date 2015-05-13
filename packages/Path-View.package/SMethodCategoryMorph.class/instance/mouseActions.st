event handling
mouseActions
	
	^ super mouseActions
		at: #startShiftDrag put: #startDraggingCopy;
		yourself