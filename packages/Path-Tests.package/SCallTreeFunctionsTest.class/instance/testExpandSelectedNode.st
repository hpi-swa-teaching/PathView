testing
testExpandSelectedNode

	self callTree expandSelectedNode.
	self assert: self callTree selectedItem == self rootNode.
	self callTree newSelectedItem: (self getNode: 12).
	self callTree expandSelectedNode.
	self assert: self callTree selectedItem ==(self getNode: 12).