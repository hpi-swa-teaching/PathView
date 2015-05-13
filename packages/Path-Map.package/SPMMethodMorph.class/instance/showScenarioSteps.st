menu actions
showScenarioSteps
	| lastResult |
	lastResult := nil.
	self pathMap tracer ifNotNil: [:tracer | 
		(tracer entryPoints 
			detect: [:each | 	(each testClass = self methodReference actualClass) and: 
							[each selector = self methodReference methodSymbol]]
			ifNone: [nil]) ifNotNil: [:entryPoint | lastResult := entryPoint lastResult]].
	
	SPMScenarioStepsDisplay openOn: self methodReference and: lastResult.
