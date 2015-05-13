as yet unclassified
testAddSelectedWordToDictionary
	sut selectFrom: unknownWordPosition to: unknownWordPosition + unknownWord size - 1.
	self assert: unknownWord = sut textMorph editor selection asString
		description: 'faulty test setup: wrong selection'.
	sut addSelectedWordToDictionary.
	self assert: (sut styler spellChecker getIgnoredWords includes: unknownWord).
	self deny: ((sut text runs at: unknownWordPosition) anySatisfy: [:attribute |
		(attribute isKindOf: TextEmphasis)
			and: [attribute emphasisCode = TextEmphasis underlined emphasisCode]])
		description: 'word still underlined after ignore'