testing-container
testIdentitySet
	self run: SHarvestingSandboxTest with: #testIdentitySet.						
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: IdentitySet 
						elements: Character 
						keys: nil)