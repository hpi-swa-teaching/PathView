run tracer
runProfiling: aSymbol
	| tracer |
	self selectedOptions kindOfProfiling caseOf: {
		[#numberOfMethodCalls] -> [tracer := SPMTRMethodCallTracer].
		[#numberOfInstances] -> [self globalOptions showEmptyCategoriesAndClasses
										ifFalse: [self globalOptions 
												showEmptyCategoriesAndClasses: true.
												self rebuildPathMap].
									tracer :=  SPMTRInstancesCountTracer].
		[#runtime] -> [self selectedOptions leafProfiling
						ifTrue: [tracer := SPMTRRuntimeLeafTracer]
						ifFalse: [tracer := SPMTRRuntimeTreeTracer]].
		[#runtimePerCall] -> [self selectedOptions leafProfiling
								ifTrue: [tracer := SPMTRRuntimeLeafRatioTracer]
								ifFalse: [tracer := SPMTRRuntimeTreeRatioTracer]].
	}.
	self runTests: aSymbol withTracer: tracer.