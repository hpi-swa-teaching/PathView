public api
runSpecificTest: aMethodRef
	self tracer ifNil: [self tracer: (SPMTestRunnerTracer 
									on: self project 
									pathMap: self 
									tests: #suiteAll)].
	self tracer testResults: IdentityDictionary new.
	self tracer entryPoints: {STestCaseEntryPoint onTestMethodReference: aMethodRef}.
	self tracer run.