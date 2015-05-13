testing
testMultipleItemSearching

	| result |
	result := self callTree searchNode: 'SSBClassB>>myValue'.
	self assert: result size = 4.
	self assert: result first id = 11.
	self assert: result second id = 13.
	self assert: result third id = 15.
	self assert: result fourth id = 16.