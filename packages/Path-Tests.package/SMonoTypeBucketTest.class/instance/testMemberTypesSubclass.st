testing
testMemberTypesSubclass
	self run: SHarvestingSandboxTest with: #testMembersTypesSubclass.	
	self assert: ((self bucket membersFor: SHClassB) at: 1) = self byteString.