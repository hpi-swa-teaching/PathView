testing
test02bTypeAssertionInPostcondition
	| source |
	source := (SSBClassA>>#initialize) afterMethod getSource asString.
	self assert: (source includesSubString: 
		'SContract expect: (SContract result) toBeKindOf: SSBClassA.').
