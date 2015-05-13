testing
test03ValueRangeHarvestingWithAllTests
	<timeout: 20>
	| morph | 
	self options setKindOfAnalysis: SValueRangeHarvester.
	self runAllTests.
	self assert: (SProject current harvestedBuckets at: #SValueRangeHarvester) class = SValueRangeBucket.
	self 
		assert: (self options getLabelString: 0.1@0.1) = 'No value ranges available';
		assert: (self options getLabelString: 0.9@0.9) = 'Strings'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self assert: morph additionalInfo = (Dictionary newFrom: 
	{#Method -> 'SSBClassA +'. 
	#Return -> (SNumbersRangeProperties new constantValue: false; range: (2.3 to: 10); positive: true; yourself). 
	#Temporaries -> {(SNumbersRangeProperties new constantValue: false; range: (2.3 to: 5); positive: true; yourself)}}).