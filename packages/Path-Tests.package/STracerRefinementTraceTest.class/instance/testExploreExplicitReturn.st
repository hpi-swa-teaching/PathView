testing
testExploreExplicitReturn

	| return |
	self tracer traceTest: SSBTest method: #testUnary.
	return := self tracer 
				explore: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #unaryMethod) first.
	self assert: return notEmpty.
	self assert: return first.