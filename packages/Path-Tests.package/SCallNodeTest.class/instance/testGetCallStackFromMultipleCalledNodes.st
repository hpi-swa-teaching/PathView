testing
testGetCallStackFromMultipleCalledNodes

	self rootNode addCall: self calledNode.
	self rootNode addCall: self calledNode.
	self rootNode addCall: self calledNode.
	self assert: self rootNode nextCalls size = 3.
	self assert: (self rootNode nextCalls second getCallStack = (OrderedCollection with: self rootNode with: self calledNode)).