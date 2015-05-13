spec commands
authorRanking
	self isSelectedAnalysisOption
		ifTrue: [self informAuthorRanking: self pathMap tracer mostOpportuneAuthors]
		ifFalse: [self inform: 'Please run tests first.']