spell checking
checkSpellingOfClassSideMethod: selector in: class resultSet: foundErrors
	self checkSpellingOfSelector: selector in: class resultSet: foundErrors.
	self checkSpellingOfClassSideMethodSource: selector in: class resultSet: foundErrors