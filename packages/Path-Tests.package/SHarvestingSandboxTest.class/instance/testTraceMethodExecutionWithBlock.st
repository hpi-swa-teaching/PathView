testing
testTraceMethodExecutionWithBlock

	self assert: (SHClassA new concatTwoStrings: [:str1 :str2 | str1, ' ', str2, '!']) = 'Hello world!'
	