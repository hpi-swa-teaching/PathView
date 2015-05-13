spell checking
checkSpellingOfSelector: selector in: class resultSet: foundErrors 
	(spellChecker checkSpellingOf: selector)
		do: [:word | self addWord: word
						in: selector
						of: class
						toResultSet: foundErrors.
			counter := counter + 1.
			inSelectorsCounter := inSelectorsCounter + 1]