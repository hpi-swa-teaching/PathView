testing-container
testHarvestOrderedCollectionWithNumber
	| type |
	self run: SHarvestingSandboxTest with: #testOrderedCollectionWithNumber.							
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = OrderedCollection;
		assert: type typeOfElements = (Set with: SmallInteger with: Float);
		assert: type typeOfKeys isEmpty.