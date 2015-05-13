testing
testObjectsView

	| nodes |
	self tracer viewMode: #objects.
	self tracer traceTest: SSBTest method: #testDoNothing.
	nodes := self callTreeGetNodesFor: SSBClassA method: #doNothing.
	self assert: (nodes first views at: #objects) = '0'.
	self assert: nodes first asString = '0>>doNothing'.