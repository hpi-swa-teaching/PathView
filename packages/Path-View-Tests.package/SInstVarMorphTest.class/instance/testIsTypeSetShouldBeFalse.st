tests
testIsTypeSetShouldBeFalse
	(testProject typesBucket membersFor: testClass) atAllPut: nil.
	self deny: [instance isTypeSet ]