tests
testDowncasing
	sut 	readChar: $A; readChar: $b; readChar: $C.
	self assert: 'Ab' equals: sut words last.
	sut 	readChar: $a; readChar: $D.
	self assert: 'Ca' equals: sut words last