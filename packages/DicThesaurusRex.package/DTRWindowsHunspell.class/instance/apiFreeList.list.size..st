api callouts
apiFreeList: aHunspellHandle list: aSuggestionList size: anInteger
	<cdecl: void 'Hunspell_free_list' (void* DTRHunspellSuggestList* long) module:'libhunspell.dll'>
	^self externalCallFailed