testing-container
testHarvestDictionary
	| type |
	self run: SHarvestingSandboxTest with: #testDictionary.
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Dictionary;
		assert: type typeOfElements anyOne = SmallInteger;
		assert: type typeOfKeys anyOne = self byteSymbol.