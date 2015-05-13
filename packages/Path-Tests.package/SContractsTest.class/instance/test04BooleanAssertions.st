testing
test04BooleanAssertions
	| source |
	source :=  (SSBClassD>>#myValue:) beforeMethod getSource asString.
	self assert: (source includesSubString: 'SContract expectNotNil: anObject.').