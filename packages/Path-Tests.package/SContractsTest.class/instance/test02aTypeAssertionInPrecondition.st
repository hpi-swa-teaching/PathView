testing
test02aTypeAssertionInPrecondition
	| source |
	source := (SSBClassA>>#+) beforeMethod getSource asString.
	self assert: (source 
					includesSubString: 'SContract expect: aValue toBeKindOf: Number.').