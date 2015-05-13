testing
test06aDeveloperRankingMethodCreator
	<timeout: 10>
	self options setFormula: #ochiai.
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.
	[self options authorRanking] 
		on: ProvideAnswerNotification 
		do: [:notification | notification resume: #ignore].
	self assert: (self pathMap tracer mostOpportuneAuthorsWith: #authorFirstChange) first key = 'mp'.