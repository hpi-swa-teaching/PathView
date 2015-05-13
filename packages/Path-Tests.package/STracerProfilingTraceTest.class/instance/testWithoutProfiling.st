testing
testWithoutProfiling

	| nodes |
	self tracer profilingMode: #normal.
	self tracer traceTest: SSBTest method: #testDelay.
	nodes := self callTreeGetNodesFor: SSBClassA method: #delayedMethod.
	self assert: nodes first profiles isEmpty.
	self assert: nodes first asString = 'SSBClassA>>delayedMethod'.