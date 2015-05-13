testing
testExploreSelfReturn

	| obj |
	self tracer traceTest: SSBTest method: #testDoNothing.
	obj := self tracer explore: #return on: (self callTreeGetNodesFor: SSBClassA method: #doNothing) first.
	self assert: obj notEmpty.
	self assert: obj size = 1.
	self assert: obj first class == SSBClassA.
	self assert: obj first myValue = 0.