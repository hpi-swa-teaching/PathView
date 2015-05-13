testing
testSearchingAndSelectNextResultAfterEndOfTree

	self callTree newSelectedItem: (self getNode: 22).
	self callTree searchNode: 'SSBClassB>>myValue'.
	self assert: self callTree selectedItem id = 11.