tracing
postProcessing
	super postProcessing.
	self project coverage: self testResults.
	self pathMap changed: #projectStatisticText.