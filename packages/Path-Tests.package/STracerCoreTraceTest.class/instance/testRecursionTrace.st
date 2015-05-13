testing
testRecursionTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testRecursion.
	nodes := self callTreeGetNodesFor: SSBClassA method: #recursionMethod:.
	self assert: nodes size = 6.
	self assert: nodes first fromSender clientClass == SSBTest.
	self assert: nodes first fromSender clientSelector == #testRecursion.
	self assert: nodes second fromSender clientClass == SSBClassA.
	self assert: nodes second fromSender clientSelector == #recursionMethod:.