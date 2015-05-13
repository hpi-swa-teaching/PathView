testing
test05RunAllTestsWithContracts
	<timeout: 30>
	| morph violation |
	self options setKindOfAnalysis: STypeHarvester.
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.
	self options setKindOfAnalysis: SValueRangeHarvester.
	self runAllTests.
	[self options addContracts.
	self runAllTestsWithContracts.
	morph := self methodMorph: (MethodReference class: SSBFaultLocalizationExample selector: #midX:Y:Z:).
	self assert: morph violations notEmpty.
	violation := morph violations sortedElements first key.
	self
		assert: violation class = SRangeContractViolation;
		assert: violation givenObject = 1;
		assert: violation expectedMin = 2.
	] ensure: [self options removeContracts.].