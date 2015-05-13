*DicThesaurusRex
asCamelCasedIdentifier
	^ (self
		withIndexCollect: [:char :index | (char isAlphaNumeric
					and: [index > 1]
					and: [(self at: index - 1) isAlphaNumeric not])
				ifTrue: [char asUppercase]
				ifFalse: [char]])
		select: #isAlphaNumeric