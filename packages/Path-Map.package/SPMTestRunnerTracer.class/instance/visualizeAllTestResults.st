visualization
visualizeAllTestResults
	self testResults keysDo: [:each | self visualizeTestResultOf: each].