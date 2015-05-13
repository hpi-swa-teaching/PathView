testing
testClosureTemps
	self run: SHarvestingSandboxTest with: #testCollectCollection.		
	self assert: ((self bucket argumentsFor: SHClassA >> #collectCollection:) at: 1) = 
					(self container: Array elements: SmallInteger keys: nil)