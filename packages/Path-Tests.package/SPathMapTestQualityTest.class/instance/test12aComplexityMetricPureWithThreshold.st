testing
test12aComplexityMetricPureWithThreshold
	<timeout: 10>
	| options morph |
	options := self getOptionWithComplexityMetric: true.	
	self 
		assert: (options getLabelString: 0.1@0.1) = 'Method not covered.
<= 1 complexity.';
		assert: (options getLabelString: 0.9@0.9) = 'Method covered.
> 5 complexity.'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph color = Color green;
		assert: morph additionalInfo = 'SSBClassA +
1 complexity.
'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #complexMethod:).
	self 
		assert: morph color = Color yellow;
		assert: morph additionalInfo = 'SSBClassA complexMethod:
2 complexity.
'.