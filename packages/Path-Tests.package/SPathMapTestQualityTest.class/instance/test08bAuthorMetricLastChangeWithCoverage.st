testing
test08bAuthorMetricLastChangeWithCoverage
	<timeout: 10>
	| options morph |
	self runAllTests.
	options := self getOptionWithAuthorMetric: #authorLastChange.
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #symbolFor:).
	self assert: morph color =  (Color r: 0.326 g: 0.5 b: 0.5).