processing
processSpellChecker

	(DTRHunspell instance spell: self lastObject asString)
			ifFalse: [self spellingOkay: false].