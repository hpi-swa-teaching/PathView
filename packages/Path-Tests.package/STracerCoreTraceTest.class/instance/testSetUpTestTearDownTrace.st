testing
testSetUpTestTearDownTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testDoNothing.
	nodes := self callTreeGetNodesFor: SSBTest method: #setUp.
	self assert: nodes size = 1.
	self assert: nodes first fromSender == self rootNode.
	nodes := self callTreeGetNodesFor: SSBTest method: #testDoNothing.
	self assert: nodes size = 1.
	self assert: nodes first fromSender == self rootNode.
	nodes := self callTreeGetNodesFor: SSBTest method: #tearDown.
	self assert: nodes size = 1.
	self assert: nodes first fromSender == self rootNode.