testing
testReturnTypes
	self run: SHarvestingSandboxTest with: #testReturn.
	self 
		assert: (self bucket returnFor: SHClassA >> #numbers:) size = 1;
		assert: (self bucket returnFor: SHClassA >> #numbers:) = (Set with: SmallInteger);
		assert: (self bucket returnFor: SHClassA >> #initialize) = (Set with: SHClassA);
		assert: (self bucket returnFor: SHClassA >> #a:) = (Set with: SHClassA).					