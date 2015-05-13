spec commands
staticMetricAccessedVariables
	self 
		staticCodeMetric: (SPMVariableAccessStaticMetric on: self);
		changed: #sortMethodsIsEnabled.
	self redrawPathMapIfPossible
		ifFalse: [self visualizeStaticMetric].