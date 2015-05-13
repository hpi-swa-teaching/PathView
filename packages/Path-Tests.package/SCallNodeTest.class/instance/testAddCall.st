testing
testAddCall

	self rootNode addCall: self calledNode.
	self assert: self rootNode nextCalls notEmpty.
	self assert: self rootNode nextCalls first == self calledNode.