testing
test06dDeveloperRankingFrequencyAndRecency
	<timeout: 10>
	self options setFormula: #ochiai.
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.
	[self options authorRanking] 
		on: ProvideAnswerNotification 
		do: [:notification | notification resume: #ignore].
	self assert: (self pathMap tracer mostOpportuneAuthorsWith: #authorRecentChanges) first key = 'mp'.