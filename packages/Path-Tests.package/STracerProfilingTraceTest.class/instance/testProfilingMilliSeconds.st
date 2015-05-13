testing
testProfilingMilliSeconds

	| nodes |
	self tracer profilingMode: #ms.
	self tracer traceTest: SSBTest method: #testDelay.
	nodes := self callTreeGetNodesFor: SSBClassA method: #delayedMethod.
	self assert: nodes first profiles notEmpty.
	self assert: (nodes first profiles at: #ms) asInteger >= 95.
	self assert: nodes first asString = ('[', (nodes first profiles at: #ms),']SSBClassA>>delayedMethod').