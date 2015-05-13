testing
testParameterTypes
	| m |
	self run: SHarvestingSandboxTest with: #testNumbers.		
	m := SHClassA >> #numbers:.
	self
		assert: (self bucket argumentsFor: m) size > 0;
		assert: ((self bucket argumentsFor: m) at: 1) = Number