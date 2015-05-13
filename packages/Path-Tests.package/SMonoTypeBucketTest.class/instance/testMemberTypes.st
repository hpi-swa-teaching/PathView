testing
testMemberTypes
	self run: SHarvestingSandboxTest with: #testMembers.	
	self
		assert: ((self bucket membersFor: SHClassA) at: 1) = Number;
		assert: ((self bucket membersFor: SHClassA) at: 2) = self string;
		assert: ((self bucket membersFor: SHClassA) at: 3) = SmalltalkImage