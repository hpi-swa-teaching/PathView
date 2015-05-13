tests
testWordSeparation
	sut 	readChar: $a; readChar: $b; readChar: $C.
	self
		assert: 'ab' equals: sut words last;
		assert: 'C' equals: sut currentWord contents