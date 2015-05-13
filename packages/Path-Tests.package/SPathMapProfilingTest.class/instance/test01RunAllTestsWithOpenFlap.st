testing
test01RunAllTestsWithOpenFlap
	<timeout: 20>
	self runAllTests.
	self checkTestResults: '52 run, 49 passes, 0 expected failures, 3 failures, 0 errors, 0 unexpected passes'.
	self checkTestResults: '1 Categories, 11 Classes, and 96 Methods (324 LoC) '.