testing
testExploreArgumentsBinary

	| obj args |
	self tracer traceTest: SSBTest method: #testBinary.
	obj := self tracer 
				explore: #arguments 
				on: (self callTreeGetNodesFor: SSBClassA method: #+) first.
	args := obj first.
	self assert: args notEmpty.
	self assert: args size = 1.
	self assert: args first = 5.