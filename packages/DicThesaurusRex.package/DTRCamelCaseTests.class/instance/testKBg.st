tests
testKBg
	| actual expected |
	sut readString: 'asjfjaghgjdfKGbAjfsajfljsf'.
	expected := #('asjfjaghgjdf' 'K' 'Gb' 'Ajfsajfljsf').
	actual := sut words.
	self
		assert: (expected hasEqualElements: actual)
		description: 'Expected ', expected, ' but was ', actual