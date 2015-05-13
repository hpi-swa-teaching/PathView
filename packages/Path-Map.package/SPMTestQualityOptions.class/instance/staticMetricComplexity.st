spec commands
staticMetricComplexity
	self 
		staticCodeMetric: (SPMComplexityStaticMetric on: self);
		changed: #sortMethodsIsEnabled.
	self redrawPathMapIfPossible
		ifFalse: [self visualizeStaticMetric].