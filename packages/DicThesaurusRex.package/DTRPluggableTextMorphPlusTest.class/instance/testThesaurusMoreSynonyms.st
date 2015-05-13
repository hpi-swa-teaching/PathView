as yet unclassified
testThesaurusMoreSynonyms
	| menu synonyms |
	menu := MenuMorph new defaultTarget: sut; yourself.
	synonyms := DTRThesaurus synonymsOf: 'new'.
	sut addThesaurusMenuItems: menu word: 'new'.
	(menu submorphs at: (menu submorphs size - 1))
		target: sut;
		doButtonAction.
	self assert: sut showSuggestionWindowCall notNil