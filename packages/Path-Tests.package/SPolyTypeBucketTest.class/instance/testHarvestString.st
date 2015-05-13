testing-container
testHarvestString
	| type |
	self run: SHarvestingSandboxTest with: #testString.							
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = ByteString;
		assert: type typeOfElements anyOne = Character;
		assert: type typeOfKeys isEmpty.