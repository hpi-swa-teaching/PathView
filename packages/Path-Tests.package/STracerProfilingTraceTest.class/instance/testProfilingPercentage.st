testing
testProfilingPercentage
	
	| nodes |
	self tracer profilingMode: #%.
	self tracer traceTest: SSBTest method: #testDelay.
	nodes := self callTreeGetNodesFor: SSBClassA method: #delayedMethod.
	self assert: nodes first profiles notEmpty.
	self assert: (nodes first profiles at: #%) asInteger > 60.
	self assert: nodes first asString = ('[', (nodes first profiles at: #%),']SSBClassA>>delayedMethod').