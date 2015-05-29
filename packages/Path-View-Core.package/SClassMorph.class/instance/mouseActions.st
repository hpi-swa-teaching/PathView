event handling
mouseActions
	
	^ super mouseActions
		at: #click put: #focus;
		yourself