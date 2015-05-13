spelling
isSpelledCorrectly: aString
	| lowercaseString |
	lowercaseString := aString asLowercase.
	^ (spellChecker spell: lowercaseString)
			or: [spellChecker spell: aString withNonLettersRemoved withFirstCharacterUppercase]
			or: [spellChecker spell: aString asUppercase]