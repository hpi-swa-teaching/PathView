spelling
checkSpellingOf: aString startingAt: anInteger 
	| misspelledWord |
	misspelledWord := ((aString copyFrom: anInteger to: aString size)
				subStrings: Character separators)
				detect: [:word | (self spell: word withNonLettersRemoved) not]
				ifNone: [^ #(0 0 )].
	^ Array
		with: (aString findString: misspelledWord startingAt: anInteger)
		with: misspelledWord size