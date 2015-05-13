testing
test11StringAssertions
	| source |
	source :=  (SSBClassD>>#myValue:) beforeMethod getSource asString.
	self 
		assert: (source includesSubString: 'SContract expectCorrectSpellingOf: anObject.');
		assert: (source includesSubString: 'SContract expectSize: anObject ofType: String isLessThan: 19.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: String is: #isAsciiString.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: String isNot: #isAllDigits.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: String isNot: #isAllSeparators.').