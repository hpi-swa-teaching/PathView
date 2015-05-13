parsing
endWord
	currentWord contents ifEmpty: [^ self].
	words add: currentWord contents.
	self foundWord;
		resetCurrentWord