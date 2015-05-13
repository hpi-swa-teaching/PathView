tests
testAcronymDetection
	sut 	readChar: $A; readChar: $B; readChar: $C.
	self deny: sut haveLowercase.
	sut readChar: $a.
	self
		assert: 'AB' equals: sut words last;
		assert: 'Ca' equals: sut currentWord contents.
	sut readChar: $D; readChar: $T; readChar: $R; readChar: $a.
	self assert: 'DT' equals: sut words last