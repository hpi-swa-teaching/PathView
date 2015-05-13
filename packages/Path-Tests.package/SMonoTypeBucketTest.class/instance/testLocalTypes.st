testing
testLocalTypes
	| m |
	self run: SHarvestingSandboxTest with: #testLocals.	
	m := SHClassA >> #locals:which:.
	self
		assert: (self bucket argumentsFor: m) size > 0;
		assert: ((self bucket argumentsFor: m) at: 1) = Object;
		assert: ((self bucket argumentsFor: m) at: 2) = SmallInteger.