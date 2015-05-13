spell checking
checkSpellingOfClassSideMethodSource: selector in: class resultSet: foundErrors
	(spellChecker checkSpellingOf: (class classSide sourceCodeAt: selector) asString)
		do: [ :word | 
			self addWord: word in: selector of: class toResultSet: foundErrors.
			counter := counter + 1 ]