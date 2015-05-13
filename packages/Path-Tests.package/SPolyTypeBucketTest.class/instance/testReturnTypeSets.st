testing
testReturnTypeSets
	self run: SHarvestingSandboxTest with: #testReturnTypeSets.
	self 
		assert: (self bucket returnFor: SHClassA >> #numbers:) size  = 4;
		assert: (self bucket returnFor: SHClassA >> #numbers:) = 
						(Set 
							with: SmallInteger
							with: Float
							with: self byteString
							with: SHClassB)