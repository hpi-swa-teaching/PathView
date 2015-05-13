testing
test12dComplexityMetricWithCoverageWithoutThreshold
	<timeout: 10>
	| morph |
	self runAllTests.
	self getOptionWithComplexityMetric: false.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self assert: morph color = (Color r: 0.326 g: 0.326 b: 0.5)	