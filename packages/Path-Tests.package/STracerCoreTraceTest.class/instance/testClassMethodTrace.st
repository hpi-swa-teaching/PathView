testing
testClassMethodTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testConstructor.
	nodes := self callTreeGetNodesFor: SSBClassB class method: #on:.
	self assert: nodes size = 1.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testConstructor.