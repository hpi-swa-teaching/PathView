testing
testExploreRecursionMethodLast

	| obj |
	self tracer traceTest: SSBTest method: #testRecursion.
	obj := self tracer 
				explore: #arguments 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) last.
	self assert: obj first first = 0.	
			
	obj := self tracer 
				explore: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) last.	
	self assert: obj first = 0.	