tracing
preProcessing
	super preProcessing.
	self 
		setOnlyPassingTestsAsEntryPoints;
		ignorePragmaMarkedEntryPoints;
		disableTimeoutOfEntryPoints.
	self harvester createCollector.