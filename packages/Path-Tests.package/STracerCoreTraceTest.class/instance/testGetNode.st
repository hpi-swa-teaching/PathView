testing
testGetNode

	self tracer traceTest: SSBTest method: #testDoNothing.
	self assert: (self tracer getNode: 0) == self rootNode.
	self assert: (self tracer getNode: -1) isNil.
	self assert: (self tracer getNode: 1) == self rootNode nextCalls first.