spec commands
staticMetricLastChanges
	self 
		staticCodeMetric: (SPMLastChangeStaticMetric on: self);
		changed: #sortMethodsIsEnabled.
	self redrawPathMapIfPossible
		ifFalse: [self visualizeStaticMetric].