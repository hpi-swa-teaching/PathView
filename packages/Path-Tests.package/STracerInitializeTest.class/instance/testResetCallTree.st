testing
testResetCallTree

	self tracer createNewCallTreeOn: SSBTest with: #testDoNothing.
	self tracer resetCallTree.
	self assert: self tracer currentId = -1.
	self assert: self rootNode isNil.