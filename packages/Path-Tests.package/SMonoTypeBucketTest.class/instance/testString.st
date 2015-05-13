testing-container
testString
	self run: SHarvestingSandboxTest with: #testString.								
	self
		assert: ((self bucket membersFor: SHClassA) at: 2) = self byteString.