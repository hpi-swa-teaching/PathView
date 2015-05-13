testing
test03bRunAllTestsWithMethodCoverageAndConvertToTestIntensity
	<timeout: 10>
	| morph |
	self options methodCoverage.
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	self assert: morph color =  Color gray.
	self options intensityCoverage.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	self assert: morph color =  (Color r: 0.172 g: 0.172 b: 0.172).