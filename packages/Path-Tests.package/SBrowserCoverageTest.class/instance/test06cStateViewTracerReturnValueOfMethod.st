testing
test06cStateViewTracerReturnValueOfMethod
<timeout: 20>
	| result tracer |
	tracer := (SStateViewMethodTracer 
				onMethodReference: (MethodReference class: ClockTimer selector: #second) 
				argument: nil
				tests: {STestCaseEntryPoint class: TestDriver selector: #testRun}) 
					run.
	result := tracer valuesAsSet.
	self assert: result = #('1').