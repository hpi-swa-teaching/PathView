testing
test02cTypeAssertionInInvariant
	| source |
	source :=  SSBDictionary organization invariantMethod getSource asString.
	self assert: (source includesSubString: 
		'SContract expect: myValue toBeKindOf: SmallInteger.')
