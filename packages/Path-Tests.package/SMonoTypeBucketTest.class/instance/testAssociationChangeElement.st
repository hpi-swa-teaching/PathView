testing-container
testAssociationChangeElement
	self run: SHarvestingSandboxTest with: #testAssociationChangeElement.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: Association 
						elements: Object 
						keys: self byteSymbol)