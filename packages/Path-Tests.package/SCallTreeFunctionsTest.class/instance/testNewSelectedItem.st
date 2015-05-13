testing
testNewSelectedItem

	self assert: self callTree selectedItem isNil.
	self callTree newSelectedItem: (self getNode: 12).
	self assert: self callTree selectedItem notNil.
	self assert: self callTree selectedItem == (self getNode: 12).