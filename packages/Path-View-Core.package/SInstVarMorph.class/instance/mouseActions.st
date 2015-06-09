event handling
mouseActions
	
	^ super mouseActions
		at: #startDrag put: #openTypeMorph;
		at: #doubleClick put: #browseVariable;
		at: #startShiftDrag put: #startDraggingCopy;
		yourself