private
getSuggestionList: aString
	| slist |
	slist := DTRHunspellSuggestList externalNew.
	slist listSize: (self apiSuggest: handle sList: slist word: aString).
	^ slist
	"make sure you free the list with #freeSuggestionList"