testing
testFindNodeFromRoot

	self assert: (self callTree findNodeInSubGraph: 0 startNode: self rootNode) isNil.
	self assert: (self callTree findNodeInSubGraph: 12 startNode: self rootNode) id = 12.
	self assert: (self callTree findNodeInSubGraph: 22 startNode: self rootNode) id = 22.