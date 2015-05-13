testing
test13aVariableAccessMetricPure
	<timeout: 10>
	| morph |
	self options staticMetricAccessedVariables.
	self 
		assert: (self options getLabelString: 0.1@0.1) = 'Method not covered.
2 variable(s) accessed.';
		assert: (self options getLabelString: 0.9@0.9) = 'Method covered.
11 variable(s) accessed.'.
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #myValue:).
	self 
		assert: morph color = (Color r: 0.65 g: 1.0 b: 0.982);
		assert: morph additionalInfo = 'SSBDictionary myValue:
2 variable(s) accessed.
'.