testing
testExploreRecursionMethodMiddle

	| obj |
	self tracer traceTest: SSBTest method: #testRecursion.
	obj := self tracer 
				explore: #arguments 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) third.
	self assert: obj first first = 3.	
			
	obj := self tracer 
				explore: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) third.	
	self assert: obj first = 6.