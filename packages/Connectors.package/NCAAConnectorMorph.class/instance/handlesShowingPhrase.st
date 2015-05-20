menus
handlesShowingPhrase
	^ self showingHandles
		ifTrue:
			['hide handles' translated]
		ifFalse:
			['show handles' translated]