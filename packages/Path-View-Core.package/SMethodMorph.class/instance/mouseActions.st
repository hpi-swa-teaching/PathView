event handling
mouseActions

	^ super mouseActions
		at: #startDrag put: #openMethod;
		at: #doubleClick put: #browseMethod;
		at: #startShiftDrag put: #startDraggingCopy;
		yourself