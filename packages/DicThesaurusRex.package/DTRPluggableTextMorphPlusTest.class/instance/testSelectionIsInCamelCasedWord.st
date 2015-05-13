as yet unclassified
testSelectionIsInCamelCasedWord
	sut setText: 'rightHere'; selectAll.
	self assert: sut selectionIsInCamelCasedWord description: 'simple case failed'.
	sut setText: 'this is not camel cased'; selectFrom: 9 to: 11.
	self deny: sut selectionIsInCamelCasedWord description: 'wrongly detected camel case'.
	sut setText: 'this is Uppercase'; selectFrom: 9 to: 17.
	self deny: sut selectionIsInCamelCasedWord description: 'wrongly detected uppercase word as camel cased'.
	sut setText: 'self isTestCase here'; selectFrom: 8 to: 15.
	self assert: sut selectionIsInCamelCasedWord description: 'no camel case detected midst the word'.
	sut setText: 'a PluggableTextMorph'; selectFrom: 3 to: 11.
	self assert: sut selectionIsInCamelCasedWord description: 'no camel case detected at beginning of word'.
	sut setText: '0815number test'; selectFrom: 5 to: 10.
	self assert: sut selectionIsInCamelCasedWord description: 'numbers at beginning did not trigger camel case'.
	sut setText: 'number0815 test'; selectFrom: 1 to: 6.
	self assert: sut selectionIsInCamelCasedWord description: 'numbers at end did not trigger camel case'.
	sut setText: 'number0815test'; selectAll.
	self assert: sut selectionIsInCamelCasedWord description: 'numbers midst words did not trigger camel case'.
	sut setText: '#my'; selectAll.
	self deny: sut selectionIsInCamelCasedWord description: '# at start must not imply camel case'