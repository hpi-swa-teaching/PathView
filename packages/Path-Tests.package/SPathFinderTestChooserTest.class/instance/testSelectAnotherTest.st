testing
testSelectAnotherTest

	self getTestModel setCurrentTest: (MethodReference class: SSBTest selector: #testDoNothing).
	self assert: self browserModel callTreeModel rootNode clientSelector == #testDoNothing.
	self getTestModel setCurrentTest: (MethodReference class: SSBTest selector: #testBinary).
	self assert: self browserModel callTreeModel rootNode clientSelector == #testBinary.