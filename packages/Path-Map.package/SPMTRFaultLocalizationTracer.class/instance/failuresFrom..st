fault localization
failuresFrom: testResults
	^ testResults inject: 0 into: [:sum :each | 
		each lastResult hasPassed ifFalse: [sum := sum + 1]. 
		sum].