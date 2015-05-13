testing
testSingleItemSearching

	| result |
	result := self callTree searchNode: 'SSBClassB>>compute'.
	self assert: result size = 1.
	self assert: result first = (self getNode: 12).