testing
test11bLinesOfCodeMetricPureWithoutThreshold
	<timeout: 10>
	| options morph |
	options := self getOptionWithLinesOfCodeMetric: false.
	self 
		assert: (options getLabelString: 0.1@0.1) = 'Method not covered.
2 lines of code.';
		assert: (options getLabelString: 0.9@0.9) = 'Method covered.
9 lines of code.'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph color = (Color r: 0.65 g: 1.0 b: 0.947);
		assert: morph additionalInfo = 'SSBClassA +
2 lines of code.
'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #complexMethod:).
	self 
		assert: morph color = (Color r: 1.0 g: 0.772 b: 0.65);
		assert: morph additionalInfo = 'SSBClassA complexMethod:
9 lines of code.
'.