menu actions
openPathFinderToolOn: aTestMethodReference					
	^ self pathMap tracer pathFinderTool
		openOn: aTestMethodReference 
		and: self methodReference
		coverageTracer: self pathMap tracer