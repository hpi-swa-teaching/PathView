testing
testExpandRootNode

	self assert: self callTree selectedItem isNil.
	self callTree expandRootNode.
	self assert: self callTree selectedItem == self rootNode.