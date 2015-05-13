testing
testCreateRootNode

	self assert: self tracer currentId = -1.
	self tracer createRootNode: SSBTest withTest: #testDoNothing.
	self assert: self tracer currentId = self tracer rootId.