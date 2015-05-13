testing-container
testOrderedCollectionWithSmallInteger
	self run: SHarvestingSandboxTest with: #testOrderedCollectionWithSmallInteger.							
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: OrderedCollection 
						elements: SmallInteger 
						keys: nil)