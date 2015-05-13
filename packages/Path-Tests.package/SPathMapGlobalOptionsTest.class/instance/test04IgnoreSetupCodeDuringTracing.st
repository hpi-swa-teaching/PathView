testing
test04IgnoreSetupCodeDuringTracing
	<timeout: 10>
	self 
		analyzeTestQuality;
		runAllTests.
	self checkTestResults: '1 Categories, 11 Classes, and 96 Methods (324 LoC) --- 97.92% covered'.
	self options switchIgnoreTracingOfSetUpAndTearDownMethods.
	self runAllTests.
	self checkTestResults: '1 Categories, 11 Classes, and 96 Methods (324 LoC) --- 89.58% covered'.