testing
test08DurationAssertions
	| source |
	source :=  (SSBClassD>>#myValue3:) beforeMethod getSource asString.
	self 
		assert: (source includesSubString: 'SContract expect: anObject ofType: Duration property: #rawSeconds isBetween: 0 and: 86400.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Duration property: #nanoSeconds isBetween: 0 and: 10000.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Duration isNot: #isZero.').