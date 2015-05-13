testing
testReturnTypeSpecialConstants
	self run: SHarvestingSandboxTest with: #testReturnTypeSpecialConstants.
	self 
		assert: (self bucket returnFor: SHClassA >> #returnTrue) size = 1;
		assert: (self bucket returnFor: SHClassA >> #returnTrue) = 
					(Set with: True)				