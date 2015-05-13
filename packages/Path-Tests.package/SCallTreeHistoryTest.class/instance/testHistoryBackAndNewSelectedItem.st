testing
testHistoryBackAndNewSelectedItem

	self callTree newSelectedItem: self rootNode.
	self callTree newSelectedItem: (self getNode: 12).
	self callTree newSelectedItem: (self getNode: 1).
	self callTree historyBack.
	self callTree historyBack.
	self callTree newSelectedItem: (self getNode: 10).
	self assert: self callTree history size = 2.
	self assert: self callTree history first == self rootNode.
	self assert: self callTree history second == (self getNode: 10).
