testing-container
testAssociationChangeKey
	self run: SHarvestingSandboxTest with: #testAssociationChangeKey.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: Association 
						elements: self byteString 
						keys: Object)