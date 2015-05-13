testing-container
testOrderedCollectionWithNumber
	self run: SHarvestingSandboxTest with: #testOrderedCollectionWithNumber.								
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: OrderedCollection 
						elements: Number 
						keys: nil)