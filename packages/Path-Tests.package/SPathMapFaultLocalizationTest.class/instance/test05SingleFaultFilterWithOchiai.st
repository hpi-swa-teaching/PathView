testing
test05SingleFaultFilterWithOchiai
	<timeout: 10>
	| morph |
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBFaultLocalizationExample selector: #midX:Y:Z:).
	self assert: morph color = (Color r: 0.824 g: 1.0 b: 0.667).
	self options switchSinglePointOfFault.
	self assert: morph color = Color white.