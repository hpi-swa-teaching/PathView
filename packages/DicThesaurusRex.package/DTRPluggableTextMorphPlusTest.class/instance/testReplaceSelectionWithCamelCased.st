as yet unclassified
testReplaceSelectionWithCamelCased
	sut setText: 'foo bar'; selectFrom: 4 to: 3;
		replaceSelectionWith: ''.
	self assert: 'foo bar' = sut text asString description: 'failed empty selection'.
	sut setText: 'rightHere'; selectAll;
		replaceSelectionWithCamelCased: 'over there'.
	self assert: 'overThere' = sut text asString description: 'not camel cased'.
	sut setText: 'this is not camel cased'; selectFrom: 9 to: 11;
		replaceSelectionWithCamelCased: 'really not'.
	self assert: 'this is really not camel cased' = sut text asString
		description: 'camel case applied to non-camel case selection'.
	sut setText: 'right here'; selectAll;
		replaceSelectionWithCamelCased: 'over there'.
	self assert: 'over there' = sut text asString
		description: 'camel case applied to non-camel case selection (multiple words)'.
	sut setText: 'self isTestCase here'; selectFrom: 8 to: 15;
		replaceSelectionWithCamelCased: 'a keyword'.
	self assert: 'self isAKeyword here' = sut text asString
		description: 'no camel case applied midst the word'.
	sut setText: 'a PluggableTextMorph'; selectFrom: 3 to: 11;
		replaceSelectionWithCamelCased: 'versatile ui'.
	self assert: 'a VersatileUiTextMorph' = sut text asString
		description: 'capitalization of original word ignored'.
	sut setText: '#mySymbol'; selectFrom: 2 to: 3;
		replaceSelectionWithCamelCased: 'your'.
	self assert: '#yourSymbol' = sut text asString
		description: '# at beginning must not be camel case start'