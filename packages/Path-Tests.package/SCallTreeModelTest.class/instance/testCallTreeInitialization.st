testing
testCallTreeInitialization

	| testCallTree |
	testCallTree := SCallTreeModel on: self tracer.
	self assert: testCallTree rootNode isNil.
	self assert: testCallTree currentNode isNil.
	self assert: testCallTree history isEmpty.
	self assert: testCallTree currentHistoryNode = 0.
	self assert: testCallTree selectedItem isNil.
	self assert: testCallTree highlightedItems isEmpty.