testing
test06CollectionsAssertions
	| source |
	source :=  (SSBClassD>>#myValue2:) beforeMethod getSource asString.
	self 
		assert: (source includesSubString: 'SContract expectSize: anObject ofType: Collection isLessThan: 3.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Collection isNot: #isEmpty.').	