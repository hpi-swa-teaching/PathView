testing
test04aStateViewTracerInstanceVariable
	<timeout: 20>
	| result tracer |
	tracer := (SStateViewInstanceVariableTracer 
				onClass: ClockTimer instVarName: 'second') run.
	result := tracer valuesAsSet.
	self assert: result = #('0' '1').