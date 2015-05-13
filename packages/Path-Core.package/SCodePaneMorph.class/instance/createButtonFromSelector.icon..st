buttons
createButtonFromSelector: aSymbol icon: aForm
	
	| button |
	button := SActionButtonIconMorph on: self selector: aSymbol icon: aForm.
	self addMorph: button.
	^ button