display
showSuggestions
	| keys suggestions |
	ui suggestionWidget clear.
	keys := errors keys sorted: [ :a :b | a < b].
	suggestions := spellChecker getGuesses: (errors at: (keys at: errorIndex)).
	suggestions do: [ :suggestion | ui suggestionWidget addText: suggestion ].
	suggestions ifNotEmpty: [ 
		ui suggestionWidget currentItem: ui suggestionWidget items first ]