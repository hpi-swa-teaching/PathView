testing-container
testHarvestBagWithNumbers
	| type |
	self run: SHarvestingSandboxTest with: #testBagWithNumbers.
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Bag;
		assert: type typeOfElements = (Set with: SmallInteger with: Float);
		assert: type typeOfKeys isEmpty.