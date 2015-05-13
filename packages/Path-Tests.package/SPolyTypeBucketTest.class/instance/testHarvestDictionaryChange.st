testing-container
testHarvestDictionaryChange
	| type |
	self run: SHarvestingSandboxTest with: #testDictionaryChange.							
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Dictionary;
		assert: type typeOfElements = (Set with: SmallInteger with: Float);
		assert: type typeOfKeys = (Set with: self byteSymbol).