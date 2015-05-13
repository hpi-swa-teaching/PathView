accessing
spellChecker
	^ spellChecker
		ifNil: [spellChecker := DTRCodeSpellChecker new]