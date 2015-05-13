testing-container
testArrayWithObject
	self run: SHarvestingSandboxTest with: #testArrayWithObject.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self container: Array elements: Object keys: nil).