testing
testProfilingAndView

	| nodes |
	self tracer profilingMode: #%.
	self tracer viewMode: #objects.
	self tracer traceTest: SSBTest method: #testDelay.
	nodes := self callTreeGetNodesFor: SSBClassA method: #delayedMethod.
	self assert: nodes first profiles notEmpty.
	self assert: nodes first views notEmpty.
	self assert: (nodes first profiles at: #%) asInteger > 60.
	self assert: (nodes first views at: #classes) = SSBClassA.
	self assert: (nodes first views at: #objects) = '0'.
	self assert: nodes first asString = ('[', (nodes first profiles at: #%),']', 
								(nodes first views at: #objects), '>>delayedMethod').