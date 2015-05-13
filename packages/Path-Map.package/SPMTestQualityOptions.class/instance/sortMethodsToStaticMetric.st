spec commands
sortMethodsToStaticMetric
	self pathMap selectedAnalysis ifNil: [^ self].
	self pathMap rebuildPathMapWithSortByMetric.
	self pathMap tracer
		setColorPropagation; 
		visualizeAllInformation.
	self pathMap addViolations.