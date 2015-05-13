testing
testExploreArgumentsUnary

	| args |
	self tracer traceTest: SSBTest method: #testUnary.
	args := self tracer 
				explore: #arguments 
				on: (self callTreeGetNodesFor: SSBClassA method: #unaryMethod) first.
	self assert: args first isEmpty.
	