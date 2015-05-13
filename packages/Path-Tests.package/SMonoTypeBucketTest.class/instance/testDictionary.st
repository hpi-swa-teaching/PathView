testing-container
testDictionary
	self run: SHarvestingSandboxTest with: #testDictionary.
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = 
					(self 
						container: Dictionary 
						elements: SmallInteger 
						keys: self byteSymbol)