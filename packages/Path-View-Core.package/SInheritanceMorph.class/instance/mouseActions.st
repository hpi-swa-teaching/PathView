event handling
mouseActions

	^ super mouseActions
		at: #startDrag put: #openSuperClass;
		at: #doubleClick put: #browseClass;
		yourself