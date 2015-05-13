testing-container
testDictionaryChange
	self run: SHarvestingSandboxTest with: #testDictionaryChange.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: Dictionary 
						elements: Number 
						keys: self byteSymbol)