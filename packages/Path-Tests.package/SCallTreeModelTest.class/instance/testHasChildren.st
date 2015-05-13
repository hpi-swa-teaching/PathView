testing
testHasChildren

	self assert: (self callTree hasChildren: self rootNode).
	self assert: (self callTree hasChildren: (self getNode: 12)).
	self deny: (self callTree hasChildren: (self getNode: 22)).