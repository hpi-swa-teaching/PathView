testing
test12cComplexityMetricWithCoverageAndThreshold
	<timeout: 10>
	| morph |
	self runAllTests.
	self getOptionWithComplexityMetric: true.	
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self assert: morph color =  (Color r: 0.0 g: 0.5 b: 0.0).