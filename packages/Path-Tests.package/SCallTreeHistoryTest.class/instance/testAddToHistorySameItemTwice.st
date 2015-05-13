testing
testAddToHistorySameItemTwice

	self callTree newSelectedItem: self rootNode.
	self callTree newSelectedItem: self rootNode.
	self assert: self callTree history notEmpty.	
	self assert: self callTree history size = 1.
	self assert: self callTree history first == self rootNode.
	self assert: self callTree currentHistoryNode = 1.