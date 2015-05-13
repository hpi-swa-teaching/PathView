spec commands
staticMetricAuthors
	self 
		staticCodeMetric: (SPMAuthorStaticMetric on: self);
		changed: #sortMethodsIsEnabled.
	self redrawPathMapIfPossible
		ifFalse: [self visualizeStaticMetric].