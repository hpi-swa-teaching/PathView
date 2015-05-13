menu actions
chooseTestCaseFrom: aCollection
	| collection |
	collection := self computeSuspiciousnessPerTest: aCollection.
	collection := self sortTestsByResult: collection. 
	^ UIManager default 
		chooseFrom: (self createMenuLabelsForSuspiciousTests: collection)
		values: (collection collect: [:each | each first])
		lines: #() 
		title: 'Choose a test case'.