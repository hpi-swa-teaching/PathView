testing
testTraceOverClassBorders

	| nodes |
	self tracer traceTest: SSBTest method: #testComplexTrace.
	nodes := self callTreeGetNodesFor: SSBClassA method: #complexMethod:.
	self assert: nodes size = 1.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testComplexTrace.
	nodes := self callTreeGetNodesFor: SSBClassB method: #compute.
	self assert: nodes size = 1.
	self assert: nodes first fromSender clientClass == SSBClassA.
	self assert: nodes first fromSender clientSelector == #complexMethod:.	