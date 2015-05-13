testing-container
testChangeFromSingleObjectToCollection
	self run: SHarvestingSandboxTest with: #testChangeFromSingleObjectToCollection.
	self assert: ((self bucket membersFor: SHClassA) at: 2) = Object.