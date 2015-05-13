testing-container
testHarvestOrderedCollectionWithSmallInteger
	| type |
	self run: SHarvestingSandboxTest with: #testOrderedCollectionWithSmallInteger.						
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = OrderedCollection;
		assert: type typeOfElements anyOne = SmallInteger;
		assert: type typeOfKeys isEmpty.