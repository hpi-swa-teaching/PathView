tests
testFoundWordCallback
	| words |
	words := OrderedCollection new.
	sut 
		foundWordCallback: [:word :isAcronym | words add: {word. isAcronym}];
		readString: 'Three words and: aCamelCasedACRONYMOne.'.
	self assert: #(('Three' false) ('words' false) ('and' false) ('a' false) ('Camel' false) ('Cased' false) ('ACRONYM' true) ('One' false)) asOrderedCollection = words
		description: 'spelling error callback did not work'