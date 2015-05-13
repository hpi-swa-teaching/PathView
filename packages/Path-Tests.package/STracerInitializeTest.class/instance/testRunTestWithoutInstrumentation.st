testing
testRunTestWithoutInstrumentation

	self tracer createNewCallTreeOn: SSBTest with: #testDoNothing.
	self tracer runRootNode.
	self assert: self rootNode nextCalls isEmpty.