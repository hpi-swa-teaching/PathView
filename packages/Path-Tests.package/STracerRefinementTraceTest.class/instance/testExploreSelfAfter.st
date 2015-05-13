testing
testExploreSelfAfter

	| obj |
	self tracer traceTest: SSBTest method: #testModelView.
	 obj := self tracer explore: #selfAfter on: (self callTreeGetNodesFor: SSBClassB method: #myValue:) first.
	self assert: obj notEmpty.
	self assert: obj size = 1.
	self assert: obj first class = SSBClassB.
	self assert: obj first myValue = 2.