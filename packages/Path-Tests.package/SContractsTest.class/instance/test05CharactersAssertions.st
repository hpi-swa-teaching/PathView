testing
test05CharactersAssertions
	| source |
	source :=  (SSBClassD>>#myValue3:) beforeMethod getSource asString.
	self 
		assert: (source includesSubString: 'SContract expect: anObject ofType: Character property: #charCode isBetween: 252 and: 252.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Character isNot: #isDigit.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Character isNot: #isSeparator.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Character isNot: #isSpecial.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Character isNot: #isUppercase.').