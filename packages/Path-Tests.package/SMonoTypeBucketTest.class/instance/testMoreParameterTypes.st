testing
testMoreParameterTypes
	| m |
	self run: SHarvestingSandboxTest with: #testStringsMagnitudesAndObjects.							
	m := SHClassA >> #strings:magnitudes:andObjects:index:.
	self
		assert: (self bucket argumentsFor: m) size > 0;
		assert: ((self bucket argumentsFor: m) at: 1) = self string;
		assert: ((self bucket argumentsFor: m) at: 2) = Magnitude;
		assert: ((self bucket argumentsFor: m) at: 3) = Object