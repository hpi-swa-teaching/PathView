testing
testReturnTypeQuick
	self run: SHarvestingSandboxTest with: #testReturnTypeQuick.
	self 
		assert: (self bucket returnFor: SHClassA >> #a) size = 1;
		assert: (self bucket returnFor: SHClassA >> #a) = (Set with: SmallInteger).