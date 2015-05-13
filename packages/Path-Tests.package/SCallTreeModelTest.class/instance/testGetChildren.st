testing
testGetChildren

	self assert: (self callTree getChildren: self rootNode) size = 3.
	self assert: (self callTree getChildren: (self getNode: 12)) size = 6.
	self assert: (self callTree getChildren: (self getNode: 22)) isEmpty.