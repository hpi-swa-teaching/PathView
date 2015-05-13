testing-container
testRecursiveCollections
	self run: SHarvestingSandboxTest with: #testRecursiveCollections.								
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: OrderedCollection 
						elements: ((self 
										container: Collection 
										elements: Object 
										keys: nil)) 
						keys: nil)