event handling
replace
	ui methodEdit textMorph selection
		ifNotEmpty: [ ui methodEdit replaceSelectionWith: ui suggestionWidget currentItem text ].
	self markNextErrorInMethod