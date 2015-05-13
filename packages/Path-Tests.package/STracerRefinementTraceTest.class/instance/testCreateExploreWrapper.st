testing
testCreateExploreWrapper

	| nodes wrapper |
	self tracer traceTest: SSBTest method: #testDoNothing.
	nodes := self callTreeGetNodesFor: SSBClassA method: #doNothing.
	wrapper := self tracer createExploreWrapper: #selfBefore on: nodes first.
	self assert: wrapper notNil.
	self assert: wrapper objects isEmpty.
	self assert: wrapper wrappedClass == SSBClassA.
	self assert: wrapper clientSelector == #doNothing.
	self assert: wrapper numberOfCallsBefore = 0.
	self assert: wrapper exploreWhat == #selfBefore.