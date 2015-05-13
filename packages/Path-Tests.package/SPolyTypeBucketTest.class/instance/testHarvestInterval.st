testing-container
testHarvestInterval
	| type |
	self run: SHarvestingSandboxTest with: #testInterval.							
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Interval;
		assert: type typeOfElements anyOne = SmallInteger;
		assert: type typeOfKeys isEmpty.