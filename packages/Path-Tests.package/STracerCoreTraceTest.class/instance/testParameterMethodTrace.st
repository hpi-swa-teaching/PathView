testing
testParameterMethodTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testParamMethod.
	nodes := self callTreeGetNodesFor: SSBClassA method: #param:method:.
	self assert: nodes size = 1.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testParamMethod.