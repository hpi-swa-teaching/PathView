testing
test02RunAllTestsWithMethodCoverage
	<timeout: 10>
	|  morph |
	self options methodCoverage.
	self 
		assert: (self options getLabelString: 0.1@0.1) =  'Method not covered.';
		assert: (self options getLabelString: 0.9@0.9) =  'Method covered.'.
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	self 
		assert: morph color =  Color gray;
		assert: morph additionalInfo = 'SSBClassA initialize
'.
	morph := self methodMorph: (MethodReference class: SSBTest selector: #testDoNothing).
	self 
		assert: morph color = (Color r: 0.0 g: 0.5 b: 0.0);
		assert: morph additionalInfo =  'SSBTest testDoNothing
Result: Test passed
'.