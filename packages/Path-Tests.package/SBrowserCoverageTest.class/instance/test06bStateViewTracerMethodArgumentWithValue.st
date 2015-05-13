testing
test06bStateViewTracerMethodArgumentWithValue
	<timeout: 20>
	| result tracer |
	tracer := (SStateViewMethodTracer 
				onMethodReference: (MethodReference class: Subject selector: #attach:) 
				argument: 1 
				tests: {STestCaseEntryPoint class: TestDriver selector: #testRun}) 
					run.
	result := tracer valuesAsSet.
	self assert: result = #('a SAnalogClock' 'a SDigitalClock').