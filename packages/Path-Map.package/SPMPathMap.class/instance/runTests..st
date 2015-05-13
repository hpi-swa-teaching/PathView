public api
runTests: aSymbol
	self selectedAnalysis: #none.
	self runTests: aSymbol withTracer: SPMTestRunnerTracer.