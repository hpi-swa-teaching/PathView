testing
test11dLinesOfCodeMetricWithCoverageWithoutThreshold
	<timeout: 10>
	| morph |
	self runAllTests.
	self getOptionWithLinesOfCodeMetric: false.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self assert: morph color = (Color r: 0.326 g: 0.5 b: 0.474)	