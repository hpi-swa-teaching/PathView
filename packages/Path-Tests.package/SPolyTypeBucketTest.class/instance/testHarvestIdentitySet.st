testing-container
testHarvestIdentitySet
	| type |
	self run: SHarvestingSandboxTest with: #testIdentitySet.							
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = IdentitySet;
		assert: type typeOfElements anyOne = Character;
		assert: type typeOfKeys isEmpty.