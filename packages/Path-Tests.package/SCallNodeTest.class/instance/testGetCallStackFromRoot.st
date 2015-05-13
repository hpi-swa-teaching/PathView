testing
testGetCallStackFromRoot

	self assert: self rootNode getCallStack = (OrderedCollection with: self rootNode).