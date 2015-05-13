testing
testModelViewTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testModelView.
	nodes := self callTreeGetNodesFor: SSBClassA method: #myValue:.
	self assert: nodes size = 3.
	self assert: nodes first nextCalls isEmpty.
	self assert: nodes second nextCalls isEmpty.
	self assert: nodes third nextCalls notEmpty.
	self assert: nodes third nextCalls first == (self callTreeGetNodesFor: SSBClassB method: #update:) first.