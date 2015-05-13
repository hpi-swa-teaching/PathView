tests
testCheckSpellingOfAtEnd
"for last word, we have to check whether the position (key in dictionary) is correct."	
	self assert: 11 equals: (sut checkSpellingOf: 'This is a testt') keys first