tests
testAcronymAtEnd
	sut readString: 'anotherTEST'.
	self assert: 'TEST' equals: sut words last