testing-container
testHarvestMatrix
	| type |
	self run: SHarvestingSandboxTest with: #testMatrix.		
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Matrix;
		assert: type typeOfElements anyOne = SmallInteger;
		assert: type typeOfKeys isEmpty.