testing
testFindNodeWithinSubtree

	| node |
	node := self getNode: 12.
	self assert: (self callTree findNodeInSubGraph: 0 startNode: node) isNil.
	self assert: (self callTree findNodeInSubGraph: 12 startNode: node) isNil.
	self assert: (self callTree findNodeInSubGraph: 22 startNode: node) isNil.
	
	self assert: (self callTree findNodeInSubGraph: 13 startNode: node) id = 13.
	self assert: (self callTree findNodeInSubGraph: 19 startNode: node) id = 19.	