testing
test13bVariableAccessMetricWithCoverage
	<timeout: 10>
	|  morph |
	self runAllTests.
	self options staticMetricAccessedVariables.
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #myValue:).
	self assert: morph color = (Color r: 0.326 g: 0.5 b: 0.492).