testing
test06cDeveloperRankingLastChange
	<timeout: 10>
	self options setFormula: #ochiai.
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.
	[self options authorRanking] 
		on: ProvideAnswerNotification 
		do: [:notification | notification resume: #ignore].
	self assert: (self pathMap tracer mostOpportuneAuthorsWith: #authorLastChange) first key = 'mp'.