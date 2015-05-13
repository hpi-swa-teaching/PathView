testing
testAddToHistoryTwoItems

	self callTree newSelectedItem: self rootNode.
	self callTree newSelectedItem: (self getNode: 12).
	self assert: self callTree history notEmpty.	
	self assert: self callTree history size = 2.
	self assert: self callTree history first == self rootNode.
	self assert: self callTree history second == (self getNode: 12).
	self assert: self callTree currentHistoryNode = 2.