testing-container
testChangeFromArrayToOrderedCollection
	self run: SHarvestingSandboxTest with: #testChangeFromArrayToOrderedCollection.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: SequenceableCollection 
						elements: SmallInteger 
						keys: nil)