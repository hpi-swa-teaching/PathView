testing
testExploreRecursionMethodFirst

	| obj |
	self tracer traceTest: SSBTest method: #testRecursion.
	obj := self tracer 
				explore: #arguments 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) first.
	self assert: obj first first = 5.	
			
	obj := self tracer 
				explore: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) first.	
	self assert: obj first = 15.	