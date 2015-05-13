testing
test02TypeHarvestingWithAllTests
	<timeout: 20>
	|  morph | 
	self options setKindOfAnalysis: STypeHarvester.
	self runAllTests.
	self assert: (SProject current harvestedBuckets at: #STypeHarvester) class = SMonoTypeBucket.
	self 
		assert: (self options getLabelString: 0.1@0.1) = 'No types available';
		assert: (self options getLabelString: 0.9@0.9) = 'Harvested types'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph color =  Color gray;
		assert: morph additionalInfo = 'temporary types
Number
return type
Number
'.