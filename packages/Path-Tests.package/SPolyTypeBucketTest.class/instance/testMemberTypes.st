testing
testMemberTypes
	self run: SHarvestingSandboxTest with: #testMembers.
	self
		assert: ((self bucket membersFor: SHClassA) at: 1) size = 2;
		assert: ((self bucket membersFor: SHClassA) at: 2) size = 2;
		assert: ((self bucket membersFor: SHClassA) at: 3) size = 1