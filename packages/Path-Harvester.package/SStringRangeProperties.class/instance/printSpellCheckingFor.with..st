contracts
printSpellCheckingFor: anArgumentName with: aBuilder
	self spellingOkay
		ifTrue: [aBuilder printSourceLine: 
				('SContract expectCorrectSpellingOf: ', anArgumentName, '.')].