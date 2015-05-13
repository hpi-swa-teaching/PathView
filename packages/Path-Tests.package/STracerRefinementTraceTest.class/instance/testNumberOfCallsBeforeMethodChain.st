testing
testNumberOfCallsBeforeMethodChain

	| wrapper |
	self tracer traceTest: SSBTest method: #testMethodChain.
	wrapper := self tracer 
				createExploreWrapper: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #methodChain:) first.
	self assert: wrapper numberOfCallsBefore = 0.
	
	wrapper := self tracer 
				createExploreWrapper: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #methodChain:) second.
	self assert: wrapper numberOfCallsBefore = 1.
	
	wrapper := self tracer 
				createExploreWrapper: #return 
				on: (self callTreeGetNodesFor: SSBClassA method: #methodChain:) third.
	self assert: wrapper numberOfCallsBefore = 2.