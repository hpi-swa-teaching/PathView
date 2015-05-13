testing-container
testAssociationChange
	self run: SHarvestingSandboxTest with: #testAssociationChange.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: Association 
						elements: Object 
						keys: Object)