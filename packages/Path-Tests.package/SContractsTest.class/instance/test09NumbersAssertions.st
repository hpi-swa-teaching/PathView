testing
test09NumbersAssertions
	| source |
	source :=  (SSBClassD>>#myValue:) beforeMethod getSource asString.
	self assert: (source includesSubString: 'SContract expect: anObject ofType: Number isBetween: 0 and: 10.').
