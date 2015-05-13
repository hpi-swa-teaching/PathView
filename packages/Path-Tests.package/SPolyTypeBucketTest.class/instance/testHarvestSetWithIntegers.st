testing-container
testHarvestSetWithIntegers
	| type |
	self run: SHarvestingSandboxTest with: #testSetWithIntegers.							
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Set;
		assert: type typeOfElements anyOne = SmallInteger;
		assert: type typeOfKeys isEmpty.