testing
testExploreOn

	| obj |
	self tracer traceTest: SSBTest method: #testDoNothing.
	 obj := self tracer explore: #selfBefore on: (self callTreeGetNodesFor: SSBClassA method: #doNothing) first.
	self assert: obj notEmpty.
	self assert: obj size = 1.
	self assert: obj first myValue = 0.