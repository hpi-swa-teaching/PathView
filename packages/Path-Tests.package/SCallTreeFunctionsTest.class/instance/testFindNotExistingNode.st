testing
testFindNotExistingNode

	self assert: (self callTree findNodeInSubGraph: -1 startNode: self rootNode) isNil.
	self assert: (self callTree findNodeInSubGraph: 23 startNode: self rootNode) isNil.