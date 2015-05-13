testing
testSpell
	self assert: (DTRHunspell instance spell: 'tezt') equals: (sut spell: 'tezt')