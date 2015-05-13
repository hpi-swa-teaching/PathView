testing-container
testHarvestRecursiveCollections
	| type |
	self run: SHarvestingSandboxTest with: #testRecursiveCollections.							
	type := ((self bucket membersFor: SHClassA) at: 2) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = OrderedCollection;
		assert: type typeOfElements = (Set 
								with: (self container: Array 
										    elements: {SmallInteger}
										    keys: {}) 
								with: (self container: Array 
										    elements: {Character} 
										    keys: {})
								with: (self container: Set 
										    elements: {self byteString} 
										    keys: {}));
		assert: type typeOfKeys isEmpty.