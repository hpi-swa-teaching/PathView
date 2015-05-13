testing
testDeselectTest

	self getTestModel setCurrentTest: (MethodReference class: SSBTest selector: #testDoNothing).
	self getTestModel setCurrentTest: nil.
	self assert: self browserModel callTreeModel rootNode isNil.