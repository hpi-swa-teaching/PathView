testing
testAnalyzeTest

	self assert: self getTestModel result isNil.
	self assert: self browserModel callTreeModel rootNode isNil.
	self getTestModel setCurrentTest: (MethodReference class: SSBTest selector: #testDoNothing).
	self getTestModel analyzeTest.
	self assert: self getTestModel result hasPassed.
	self assert: self browserModel callTreeModel rootNode notNil.