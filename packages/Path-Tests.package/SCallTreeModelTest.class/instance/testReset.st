testing
testReset

	self assert: self callTree rootNode notNil.
	self callTree reset.
	self assert: self callTree rootNode isNil.
	self assert: self callTree currentNode isNil.
	self assert: self callTree history isEmpty.
	self assert: self callTree currentHistoryNode = 0.
	self assert: self callTree selectedItem isNil.
	self assert: self callTree highlightedItems isEmpty.