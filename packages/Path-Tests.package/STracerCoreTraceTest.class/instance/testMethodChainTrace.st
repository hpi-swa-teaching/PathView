testing
testMethodChainTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testMethodChain.
	nodes := self callTreeGetNodesFor: SSBClassA method: #methodChain:.
	self assert: nodes size = 3.
	nodes do: [:each | 
		self assert: each fromSender clientClass == SSBTest.
		self assert: each fromSender clientSelector == #testMethodChain].