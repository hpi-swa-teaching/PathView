testing
testClassesView

	| nodes |
	self tracer traceTest: SSBTest method: #testDoNothing.
	nodes := self callTreeGetNodesFor: SSBClassA method: #doNothing.
	self assert: (nodes first views at: #classes) = SSBClassA.
	self assert: nodes first asString = 'SSBClassA>>doNothing'.