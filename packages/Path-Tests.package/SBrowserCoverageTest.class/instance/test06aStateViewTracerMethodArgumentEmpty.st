testing
test06aStateViewTracerMethodArgumentEmpty
	<timeout: 20>
	| result tracer |
	tracer := (SStateViewMethodTracer 
				onMethodReference: (MethodReference 
										class: ClockTimer selector: #second:) 
				argument: 1 
				tests: {STestCaseEntryPoint class: TestDriver selector: #testRun}) 
					run.
	result := tracer valuesAsSet.
	self assert: result = #().