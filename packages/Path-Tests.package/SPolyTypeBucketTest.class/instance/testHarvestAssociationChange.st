testing-container
testHarvestAssociationChange
	| type |
	self run: SHarvestingSandboxTest with: #testAssociationChange.
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Association;
		assert: type typeOfElements = (Set 
											with: self byteString 
											with: SmallInteger);
		assert: type typeOfKeys = (Set 
										with: self byteSymbol 
										with: SmallInteger).