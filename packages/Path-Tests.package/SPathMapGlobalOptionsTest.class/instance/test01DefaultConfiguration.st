testing
test01DefaultConfiguration
	self 
		deny: self options showMethodCategories;
		deny: self options showAllMethods;
		deny: self options ignoreTracingOfSetUpAndTearDownMethods;
		assert: self options visualizeIntermediateSteps;
		assert: self options showTestResults.