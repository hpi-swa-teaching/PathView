test results
passingTests
	^ self allTests reject: [:each | self failingTests includes: each].