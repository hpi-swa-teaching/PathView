testing
testPartialTrace

	| nodes |
	self tracer traceTest: SSBTest method: #testPartial.
	nodes := self callTreeGetNodesFor: Behavior method: #new.
	self assert: nodes isEmpty.
	nodes := self callTreeGetNodesFor: SSBClassA method: #doNothing.
	self assert: nodes notEmpty.
	nodes := self callTreeGetNodesFor: SPartialTraceObject method: #doSomething.
	self assert: nodes isEmpty.