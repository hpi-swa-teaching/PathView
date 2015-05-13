testing
testReturnTypes
	self run: SHarvestingSandboxTest with: #testReturn.	
	self 
		assert: (self bucket returnFor: SHClassA >> #numbers:) = SmallInteger;
		assert: (self bucket returnFor: SHClassA >> #initialize) = SHClassA;
		assert: (self bucket returnFor: SHClassA >> #a:) = SHClassA.