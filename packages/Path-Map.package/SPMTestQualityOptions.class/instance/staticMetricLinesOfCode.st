spec commands
staticMetricLinesOfCode
	self 
		staticCodeMetric: (SPMLinesOfCodeStaticMetric on: self);
		changed: #sortMethodsIsEnabled.
	self redrawPathMapIfPossible
		ifFalse: [self visualizeStaticMetric].