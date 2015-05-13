testing-container
testHarvestArrayWithObject
	| type |
	self run: SHarvestingSandboxTest with: #testArrayWithObject.
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Array;
		assert: type typeOfElements  = (Set 
											with: self byteString 
											with: SmallInteger);
		assert: type typeOfKeys isEmpty.