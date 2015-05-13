initialize-release
initialize
	| answer |
	self class isThresholdBased
		ifTrue: [	answer := UIManager default 
					chooseFrom: {'Yes'. 'No'}
					values: {true. false}
					lines: #() 
					title: 'Include Thresholds?'.
				answer ifNotNil: [self thresholdSelected: answer]].