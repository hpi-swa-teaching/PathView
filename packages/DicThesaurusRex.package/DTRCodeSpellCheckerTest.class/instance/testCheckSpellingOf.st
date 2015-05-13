tests
testCheckSpellingOf
	"Tests DTRCodeSpellChecker>>#checkSpellingOf:"
	self 
		assert: (Dictionary newFromPairs: #(11 'tezt')) 
			= (sut checkSpellingOf: 'this is a tezt case') 
		description: 'simple spelling mistake not found';
		assert: (Dictionary newFromPairs: #(1 'thiz'))
			= (sut checkSpellingOf: 'thiz is a test')
		description:  'misspelled word at the beginning';
		assert: (Dictionary newFromPairs: #(11 'tezt'))
			= (sut checkSpellingOf: 'this is a tezt')
		description: 'misspelled word at the end';
		assert: (Dictionary newFromPairs: #(10 'Tezt'))
			= (sut checkSpellingOf: 'this is aTeztCase')
		description: 'find the spelling mistake and only the mistake';
		assert: (Dictionary newFromPairs: #(1 'arb'))
			= (sut checkSpellingOf: 'arbTest case')
		description: 'at beginning camel cased';
		assert: (Dictionary newFromPairs: #(14 'Woord'))
			= (sut checkSpellingOf: 'the arbitraryWoord')
		description: 'at end camel cased';
		assert: (Dictionary newFromPairs: #(17 'arbitrar'))
			= (sut checkSpellingOf: 'anArbitraryWord arbitrar')
		description: 'find only the second instance of ''arbitrar'' here';
		assert: (Dictionary newFromPairs: #(1 'mulptible' 11 'mispelled'))
			= (sut checkSpellingOf: 'mulptible mispelled words')
		description: 'find all spelling mistakes';
		assert: (Dictionary newFromPairs: #(17 'arbitrar' 26 'arbitrar'))
			= (sut checkSpellingOf: 'anArbitraryWord arbitrar arbitrar')
		description: 'find both instances of arbitar';
		assert: (Dictionary newFromPairs: #(17 'Selfreference'))
			= (sut checkSpellingOf: 'aSelfReference aSelfreference');
		assert: (sut checkSpellingOf: 'ok') isEmpty