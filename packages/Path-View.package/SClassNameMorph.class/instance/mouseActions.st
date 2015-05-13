event handling
mouseActions

	^ super mouseActions
		at: #doubleClick put: #browseClass;
		at: #startDrag put: #classMorphDragged;
		yourself