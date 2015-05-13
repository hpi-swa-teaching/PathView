testing
testSelectTest

	self getTestModel setCurrentTest: (MethodReference class: SSBTest selector: #testDoNothing).
	self assert: self browserModel callTreeModel rootNode notNil.
	self getTestModel setCurrentTest: nil.
	self assert: self browserModel callTreeModel rootNode isNil.