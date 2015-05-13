testing
testGetSearchQuery

	self assert: self callTree searchQuery isNil.
	self callTree searchNode: 'SSBClassB>>myValue'.
	self assert: self callTree searchQuery = 'SSBClassB>>myValue'.