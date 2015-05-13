testing
testNumberOfCallsBeforeRecursion

	| wrapper |
	self tracer traceTest: SSBTest method: #testRecursion.
	wrapper := self tracer 
				createExploreWrapper: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) first.
	self assert: wrapper numberOfCallsBefore = 0.
	
	wrapper := self tracer 
				createExploreWrapper: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) last.
	self assert: wrapper numberOfCallsBefore = 5.
	
	wrapper := self tracer 
				createExploreWrapper: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #recursionMethod:) third.
	self assert: wrapper numberOfCallsBefore = 2.