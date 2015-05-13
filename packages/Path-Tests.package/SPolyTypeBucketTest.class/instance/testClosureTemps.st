testing
testClosureTemps
	self run: SHarvestingSandboxTest with: #testCollectCollection.
	self 
		assert: ((self bucket argumentsFor: SHClassA >> #collectCollection:) at: 1) 
					size = 1;
		assert: ((self bucket argumentsFor: SHClassA >> #collectCollection:) at: 1) = 
						(Set with: (self container: Array elements: {SmallInteger} keys: {}))