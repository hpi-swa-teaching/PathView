api callouts
apiFreeList: aHunspellHandle list: aSuggestionList size: anInteger
	<cdecl: void 'Hunspell_free_list' (void* DTRHunspellSuggestList* long) module:'libhunspell-1.3.so.0'>
	^self externalCallFailed