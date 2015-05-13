testing
testProfilingCounts

	| nodes |
	self tracer profilingMode: #counts.
	self tracer traceTest: SSBTest method: #testRecursion.
	nodes := self callTreeGetNodesFor: SSBClassA method: #recursionMethod:.
	nodes withIndexDo: [:each :index | 
		self assert: each profiles notEmpty.
		self assert: (each profiles at: #counts) asInteger = index.		
		self assert: (each asString beginsWith: '[', (each profiles at: #counts),']SSBClassA>>recursionMethod:')].
