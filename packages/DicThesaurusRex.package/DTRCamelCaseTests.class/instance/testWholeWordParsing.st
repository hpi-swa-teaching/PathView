tests
testWholeWordParsing
	| actual expected |
	sut readString: 'thisIsTheDTRCamelCaseTest'.
	expected := #('this' 'Is' 'The' 'DTR' 'Camel' 'Case' 'Test').
	actual := sut words.
	self
		assert: (expected hasEqualElements: actual)
		description: 'Expected ', expected, ' but was ', actual