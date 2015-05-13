testing
test01RunAllTests
	self runAllTests.
	self checkTestResults: '52 run, 49 passes, 0 expected failures, 3 failures, 0 errors, 0 unexpected passes'.
	self passingTests 
		do: [:each | self assert: (self methodMorph: each) color = Color green].
	self failingTests 
		do: [:each | self assert: (self methodMorph: each) color = Color yellow].
	self methodsWithoutTests
		do: [:each | self assert: (self methodMorph: each) color = Color white].