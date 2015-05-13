spell checking
checkSpellingOfMethod: selector in: class resultSet: foundErrors
	self checkSpellingOfSelector: selector in: class resultSet: foundErrors.
	self checkSpellingOfMethodSource: selector in: class resultSet: foundErrors