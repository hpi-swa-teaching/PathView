testing-container
testAssociation
	self run: SHarvestingSandboxTest with: #testAssociation.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: Association 
						elements: self byteString 
						keys: self byteSymbol).