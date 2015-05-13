testing-container
testStringAndSymbol
	self run: SHarvestingSandboxTest with: #testStringAndSymbol.								
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = self string.