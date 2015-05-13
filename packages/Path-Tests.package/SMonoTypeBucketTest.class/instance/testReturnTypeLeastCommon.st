testing
testReturnTypeLeastCommon
	self run: SHarvestingSandboxTest with: #testReturnLeastCommon.			
	self assert: (self bucket returnFor: SHClassA >> #numbers:) = Number.			