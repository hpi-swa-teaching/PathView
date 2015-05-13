running
endExecutionOf: anEntryPoint withResult: aTestResult
	self 
		setTestRunnerResult: aTestResult;
		storeResultOf: anEntryPoint.
	self globalOptions visualizeIntermediateSteps
		ifTrue: [self visualizeEndExecutionOf: anEntryPoint].