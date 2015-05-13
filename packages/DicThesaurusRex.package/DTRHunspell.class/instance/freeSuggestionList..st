private
freeSuggestionList: aHunspellSuggestionList
	aHunspellSuggestionList listSize ifNil: [Error signal: 'no list size specified'].
	self apiFreeList: handle list: aHunspellSuggestionList size: aHunspellSuggestionList listSize