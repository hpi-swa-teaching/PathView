event handling
addToDictionary
	| keys ignoredWord |
	keys := errors keys sorted: [ :a :b | a < b].
	spellChecker setIgnoredWord: (ignoredWord := (errors at: (keys at: errorIndex))).
	ui methodEdit updateStyling.
	errorIndex := errorIndex - ((1 to: errorIndex) 
		count: [ :x | (errors at: (keys at: x)) = ignoredWord ]) max: 1.
	self markNextError