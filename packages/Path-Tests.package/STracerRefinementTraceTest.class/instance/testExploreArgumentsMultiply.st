testing
testExploreArgumentsMultiply

	| obj args |
	self tracer traceTest: SSBTest method: #testParamMethod.
	obj := self tracer 
				explore: #arguments 
				on: (self callTreeGetNodesFor: SSBClassA method: #param:method:) first.
	args := obj first.
	self assert: args notEmpty.
	self assert: args size = 2.
	self assert: args = #(1 2).