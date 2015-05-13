testing
test04CreationOfContracts
	<timeout: 30>
	self options setKindOfAnalysis: STypeHarvester.
	self deny: self options isAddingContractsPossible.
	self runAllTests.
	self options setKindOfAnalysis: SValueRangeHarvester.
	self runAllTests.
	self 
		assert: (SProject current harvestedBuckets at: #STypeHarvester) class = 
			SMonoTypeBucket;
		assert: (SProject current harvestedBuckets at: #SValueRangeHarvester) class = 
			SValueRangeBucket.
	self 
		assert: self options isAddingContractsPossible;
		deny: self options isRemovingContractsPossible.
	[self options addContracts.
	self 
		deny: self options isAddingContractsPossible;
		assert: self options isRemovingContractsPossible.
	] ensure: [self options removeContracts].