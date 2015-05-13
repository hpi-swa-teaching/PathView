display
markNextError
	| keys |
	self spellCheckTextAgain.
	keys := errors keys sorted: [:a :b | a < b].
	(errorIndex > errors size)
		ifTrue: [ self showNextMethod ]
		ifFalse: [ui methodEdit setSelection: (Interval from: (keys at: errorIndex) to: (keys at: errorIndex) + (errors at: (keys at: errorIndex)) size - 1).
				ui dictionaryLabel text: 'Not in dictionary:   ', (errors at: (keys at: errorIndex)).	
				self showSuggestions]