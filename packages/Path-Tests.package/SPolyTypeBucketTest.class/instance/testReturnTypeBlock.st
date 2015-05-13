testing
testReturnTypeBlock
	self run: SHarvestingSandboxTest with: #testReturnTypeBlock.
	self 
		assert: (self bucket returnFor: SHClassA >> #returnBlock:) size = 1;
		assert: (self bucket returnFor: SHClassA >> #returnBlock:) = 
					(Set with: SmallInteger);
		assert: (self bucket returnFor: SHClassA >> #evalBlock:with:) size = 0						