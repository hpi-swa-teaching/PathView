testing
test11aLinesOfCodeMetricPureWithThreshold
	<timeout: 10>
	| options morph |
	options := self getOptionWithLinesOfCodeMetric: true.	
	self 
		assert: (options getLabelString: 0.1@0.1) = 'Method not covered.
<= 7 lines of code.';
		assert: (options getLabelString: 0.9@0.9) = 'Method covered.
> 19 lines of code.'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph color = Color green;
		assert: morph additionalInfo = 'SSBClassA +
2 lines of code.
'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #complexMethod:).
	self 
		assert: morph color = Color yellow;
		assert: morph additionalInfo = 'SSBClassA complexMethod:
9 lines of code.
'.