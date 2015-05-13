testing
testRootId

	self assert: self tracer rootId = 0.
	self deny: self tracer rootId = self tracer currentId.