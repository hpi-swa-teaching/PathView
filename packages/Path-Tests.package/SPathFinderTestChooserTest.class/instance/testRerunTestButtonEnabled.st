testing
testRerunTestButtonEnabled

	self deny: self getTestModel isTestAvailable.
	self getTestModel setCurrentTest: (MethodReference class: SSBTest selector: #testDoNothing).
	self assert: self getTestModel isTestAvailable.
	self getTestModel setCurrentTest: nil.
	self deny: self getTestModel isTestAvailable.