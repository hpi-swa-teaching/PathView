constraints
hasAnyInputs
	^inputs notNil 
		and: [inputs anySatisfy: [:ea | ea ~~ nil ]]
