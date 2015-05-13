testing
testCreateNewCallTree

	self assert: self rootNode isNil.
	self tracer createNewCallTreeOn: SSBTest with: #testDoNothing.
	self assert: self tracer currentId = self tracer rootId.
	self assert: self rootNode notNil.
	self assert: self rootNode nextCalls isEmpty.