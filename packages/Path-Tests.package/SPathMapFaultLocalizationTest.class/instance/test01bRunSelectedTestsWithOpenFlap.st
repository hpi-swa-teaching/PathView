testing
test01bRunSelectedTestsWithOpenFlap
	<timeout: 10>
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests;
		checkTestResults: '6 run, 5 passes, 0 expected failures, 1 failures, 0 errors, 0 unexpected passes'.
	self 
		assert: (self options getLabelString: 0.1@0.1) = '10% suspicious
100% confidence';
		assert: (self options getLabelString: 0.9@0.9) = '90% suspicious
11% confidence'.