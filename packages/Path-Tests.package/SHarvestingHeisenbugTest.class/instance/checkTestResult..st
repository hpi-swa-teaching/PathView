checking
checkTestResult: aTracer
	| testResult | 
	testResult := aTracer entryPoints first lastResult.
	self assert: testResult tests size = 1.
	self assert: testResult hasPassed.
	self deny: testResult hasFailures.
	self deny: testResult hasErrors.