spec commands
staticMetricNone
	self 
		staticCodeMetric: (SPMStaticMetric on: self);
		changed: #sortMethodsIsEnabled.
	self redrawPathMapIfPossible
		ifFalse: [self visualizeStaticMetric].