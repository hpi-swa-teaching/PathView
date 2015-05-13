testing
test02RunSelectedTestSuites
	self 
		selectTests: (Set with: SSBTest with: SSBTypeTest);
		runAllTests;
		checkTestResults: '21 run, 20 passes, 0 expected failures, 1 failures, 0 errors, 0 unexpected passes'.
	self assert: (self methodMorph: 
			(MethodReference class: SSBTest selector: #testDoNothing)) color = 
				Color green.
	self assert: (self methodMorph: 
			(MethodReference class: SSBTest selector: #testParamMethod2)) color =
				Color yellow.
	self assert: (self methodMorph: 
			(MethodReference 
				class: SSBFaultLocalizationTest selector: #testFailingMethodFault)) color =
				Color white.