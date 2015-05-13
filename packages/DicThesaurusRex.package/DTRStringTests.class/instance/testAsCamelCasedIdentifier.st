as yet unclassified
testAsCamelCasedIdentifier
	self
		assert: 'word' = 'word' asCamelCasedIdentifier description: 'single word not preserved';
		assert: 'Word' = 'Word' asCamelCasedIdentifier description: 'ignored capitalization of single word';
		assert: 'thisIsATest' = 'this is a test' asCamelCasedIdentifier description: 'failed general camel casing';
		assert: 'coOrdinates' = 'co-ordinates' asCamelCasedIdentifier description: 'failed illegal character skipping';
		assert: 'ThisIsATest' = 'This is a test' asCamelCasedIdentifier description: 'ignored capitalization of original text';
		assert: '' = '' asCamelCasedIdentifier description: 'empty string modified';
		assert: 'DTRThesaurus' = 'DTR thesaurus' asCamelCasedIdentifier description: 'failed with class prefix';
		assert: 'aDTRClass' = 'a DTR class' asCamelCasedIdentifier description: 'failed with acronym midst the word'
	