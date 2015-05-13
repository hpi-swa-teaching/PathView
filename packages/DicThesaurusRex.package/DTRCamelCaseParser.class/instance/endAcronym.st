parsing
endAcronym
	| firstCharacterOfNewWord |
	currentWord position: currentWord position - 1.
	words add: currentWord contents.
	self foundAcronym.
	currentWord position: currentWord position + 1.
	firstCharacterOfNewWord := currentWord peekLast.
	self resetCurrentWord.
	currentWord nextPut: firstCharacterOfNewWord