spec commands
showHighscore
	^ self isSelectedAnalysisOption
		ifTrue: [self pathMap tracer getProfilingHighscore explore]
		ifFalse: [self inform: 'Please run tests first.']