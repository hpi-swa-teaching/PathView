testing-container
testHarvestAssociation
	| type |
	self run: SHarvestingSandboxTest with: #testAssociation.
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Association;
		assert: type typeOfElements anyOne = self byteString;
		assert: type typeOfKeys anyOne = self byteSymbol.