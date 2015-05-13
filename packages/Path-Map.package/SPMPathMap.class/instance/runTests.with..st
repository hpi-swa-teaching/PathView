public api
runTests: aSymbol with: anAnalysisSymbol
	self selectedAnalysis: anAnalysisSymbol.
	self globalOptions showEmptyCategoriesAndClasses
		ifTrue: [self globalOptions showEmptyCategoriesAndClasses: false.
				self rebuildPathMap].
	self selectedAnalysis caseOf: {
		[#testQuality] -> [self runTestQualityCoverage: aSymbol].
		[#traceability] -> [self runTraceabilityCoverage: aSymbol].
		[#faultLocalization] -> [self runFaultLocalization: aSymbol].
		[#profiling] -> [self runProfiling: aSymbol].
		[#inductive] -> [self runInductiveAnalysis: aSymbol]
	}