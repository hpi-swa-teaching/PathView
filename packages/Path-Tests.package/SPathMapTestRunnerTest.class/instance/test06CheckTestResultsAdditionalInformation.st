testing
test06CheckTestResultsAdditionalInformation
	self runAllTests.
	self passingTests 
		do: [:each | self assert: (self methodMorph: each) additionalInfo = 
				(each asStringOrText, String cr, 
				'Result: Test passed', String cr)].
	self failingTests 
		do: [:each | self assert: (self methodMorph: each) additionalInfo = 
				(each asStringOrText, String cr, 
				'Result: Test failed - TestFailure: Assertion failed', String cr)].