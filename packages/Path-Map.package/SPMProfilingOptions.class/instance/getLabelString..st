visualization
getLabelString: aPosition
	| localValue |
	self isSelectedAnalysisOption
		ifTrue: [
			localValue := (((aPosition x * (self pathMap tracer maxValue) ln)) exp) ceiling.
			^ localValue asString, ' ', self pathMap tracer unitForLegend]
		ifFalse: [^ 'Please run tests first.']