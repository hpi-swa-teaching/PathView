testing
testSearchingAndSelectNextResult

	self assert: self callTree selectedItem isNil.
	self callTree searchNode: 'SSBClassB>>myValue'.
	self callTree searchNode: 'SSBClassB>>myValue'.
	self assert: self callTree selectedItem id = 13.