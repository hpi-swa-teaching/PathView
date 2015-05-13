testing
testSearchingAndSelectNextResultAfterCurrentSelection

	self callTree newSelectedItem: (self getNode: 14).
	self callTree searchNode: 'SSBClassB>>myValue'.
	self assert: self callTree selectedItem id = 15.