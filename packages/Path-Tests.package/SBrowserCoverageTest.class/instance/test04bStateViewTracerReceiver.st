testing
test04bStateViewTracerReceiver
	<timeout: 20>
	| result tracer |
	tracer := (SStateViewInstanceVariableTracer 
				onClass: Observer instVarName: nil) run.
	result := tracer valuesAsSet.
	self assert: result = #('a SAnalogClock' 'a SDigitalClock').