testing
test03ContainerTypeAssertions
	| source |
	source :=  (SSBDictionary>>#symbolFor:) beforeMethod getSource asString.
	self assert: (source includesSubString: 
		'SContract expect: squeakSymbol toBeKindOf: ByteSymbol.').
	self assert: (source includesSubString: 
		'SContract expectElementsOf: squeakSymbol toBeKindOf: Character.').