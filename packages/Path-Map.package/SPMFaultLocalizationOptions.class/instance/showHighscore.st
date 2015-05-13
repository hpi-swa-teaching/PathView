spec commands
showHighscore
	^ self isSelectedAnalysisOption
		ifTrue: [self pathMap tracer mostSuspiciousMethods explore]
		ifFalse: [self inform: 'Please run tests first.']