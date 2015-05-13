testing
test06ShowTestResults
	<timeout: 10>
	| morph |
	self 
		analyzeTestQuality;
		runAllTests.
	morph := self methodMorph: (MethodReference class: SSBTest selector: #testDoNothing).
	self assert: morph color = (Color r: 0.0 g: 0.5 b: 0.0).
	self options switchShowTestResults.
	self runAllTests.
	self assert: morph color = Color gray.