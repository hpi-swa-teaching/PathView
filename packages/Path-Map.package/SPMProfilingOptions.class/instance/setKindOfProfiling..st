spec commands
setKindOfProfiling: aSymbol
	self kindOfProfiling: aSymbol.
	self changed: #isRuntimeProfilingSelected.