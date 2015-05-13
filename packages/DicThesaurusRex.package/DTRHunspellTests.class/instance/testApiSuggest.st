tests
testApiSuggest
	"Only required for native Hunspell library"
	| slist actualSize |
	slist := DTRHunspellSuggestList externalNew.
	actualSize := (sut apiSuggest: sut handle sList: slist word: 'aplpe').
	sut class = DTRMacHunspell
		ifFalse: [self assert: 2 <= actualSize description: '# suggestions for aplpe'].
	sut freeSuggestionList: slist size: actualSize.