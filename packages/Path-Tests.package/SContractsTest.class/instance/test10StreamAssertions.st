testing
test10StreamAssertions
	| source |
	source :=  (SSBClassD>>#myValue2:) beforeMethod getSource asString.
	self 
		assert: (source includesSubString: 'SContract expect: anObject ofType: Stream isNot: #closed.');
		assert: (source includesSubString: 'SContract expect: anObject ofType: Stream property: #''contents class'' includes: {OrderedCollection . ByteString}.').