as yet unclassified
testCreation
	| entry |
		entry := DTRThesaurusEntry new origin: 'test'; partOfSpeech: '(noun)'; meaning: 'mental test'; 
			synonyms: (OrderedCollection new 
				add: 'mental testing'; 
				add: 'psychometric test'; 
				add: 'mental measurement';
				yourself).
		self assert: entry origin equals: ((DTRThesaurus thesaurus at: 'test') at: 1) origin.
		self assert: entry partOfSpeech equals: ((DTRThesaurus thesaurus at: 'test') at: 1) partOfSpeech.
		self assert: entry meaning equals: ((DTRThesaurus thesaurus at: 'test') at: 1) meaning.
		self assert: entry synonyms equals: ((DTRThesaurus thesaurus at: 'test') at: 1) synonyms