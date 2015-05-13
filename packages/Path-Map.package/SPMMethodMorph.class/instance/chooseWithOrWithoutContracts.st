menu actions
chooseWithOrWithoutContracts
	self pathMap project hasContracts ifFalse: [^ false].
	self pathMap violations ifEmpty:  [^ false].
	^ UIManager default 
		chooseFrom: {'Yes'. 'No'}
		values: {true. false}
		lines: #() 
		title: 'Run with Contracts?', String cr,
			'(If the debugged method includes violations,', String cr,
			'no break point can be set with activated contracts)'.