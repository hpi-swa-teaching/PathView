tracing
askForContracts
	self project hasContracts ifFalse: [^ false].
	self withContracts ifTrue: [^ true].
	^ UIManager default 
		chooseFrom: {'Yes'. 'No'}
		values: {true. false}
		lines: #() 
		title: 'Run with Contracts?'