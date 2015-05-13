fault localization
getCoveredByteCodes
	| coveredTests wrapper |
	coveredTests := self faultTracer getCoveringTests: self callNode methodReference.
	[wrapper := SMethodByteCodeCoverageForAllTestsWrapper 
					on: self callNode methodReference.
	wrapper install.
	self runTests: coveredTests forAnalyzing: wrapper]
		ensure: [wrapper uninstall].
	^ wrapper coveredByteCodes