testing-container
testHarvestAssociationChangeKey
	| type |
	self run: SHarvestingSandboxTest with: #testAssociationChangeKey.
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Association;
		assert: type typeOfElements = (Set with: self byteString);
		assert: type typeOfKeys = (Set 
										with: self byteSymbol 
										with: SmallInteger).