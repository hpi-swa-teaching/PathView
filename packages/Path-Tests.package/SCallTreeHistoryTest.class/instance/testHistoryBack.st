testing
testHistoryBack

	self callTree newSelectedItem: self rootNode.
	self callTree newSelectedItem: (self getNode: 12).
	self callTree newSelectedItem: (self getNode: 1).
	self callTree historyBack.
	self assert: self callTree selectedItem == (self getNode: 12).
	self callTree historyBack.
	self assert: self callTree selectedItem == self rootNode.