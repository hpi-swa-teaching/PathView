testing
testUnaryMethodTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testUnary.
	nodes := self callTreeGetNodesFor: SSBClassA method: #unaryMethod.
	self assert: nodes size = 1.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testUnary.