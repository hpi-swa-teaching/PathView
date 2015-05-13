testing
test03aRunAllTestsWithTestIntensity
	<timeout: 10>
	| morph |
	self options intensityCoverage.
	self 
		assert: (self options getLabelString: 0.1@0.1) =  'Method not covered.';
		assert: (self options getLabelString: 0.9@0.9) =  'Method covered by 30 tests.'.
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	self 
		assert: morph color =  (Color r: 0.172 g: 0.172 b: 0.172);
		assert: morph additionalInfo =  'SSBClassA initialize
21 test(s) covered this method.
'.
	morph := self methodMorph: (MethodReference class: SSBTest selector: #testDoNothing).
	self 
		assert: morph color = (Color r: 0.0 g: 0.75 b: 0.0);
		assert: morph additionalInfo = 'SSBTest testDoNothing
Result: Test passed
1 test(s) covered this method.
'.