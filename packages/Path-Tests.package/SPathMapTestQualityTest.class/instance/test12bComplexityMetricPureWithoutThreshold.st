testing
test12bComplexityMetricPureWithoutThreshold
	<timeout: 10>
	| options morph |
	options := self getOptionWithComplexityMetric: false.
	self 
		assert: (options getLabelString: 0.1@0.1) = 'Method not covered.
2 complexity.';
		assert: (options getLabelString: 0.9@0.9) = 'Method covered.
9 complexity.'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph color = (Color r: 0.65 g: 0.65 b: 1.0);
		assert: morph additionalInfo = 'SSBClassA +
1 complexity.
'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #complexMethod:).
	self 
		assert: morph color = (Color r: 0.65 g: 1.0 b: 0.947);
		assert: morph additionalInfo = 'SSBClassA complexMethod:
2 complexity.
'.