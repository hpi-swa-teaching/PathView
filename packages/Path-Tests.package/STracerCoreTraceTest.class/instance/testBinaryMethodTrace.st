testing
testBinaryMethodTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testBinary.
	nodes := self callTreeGetNodesFor: SSBClassA method: #+.
	self assert: nodes size = 1.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testBinary.