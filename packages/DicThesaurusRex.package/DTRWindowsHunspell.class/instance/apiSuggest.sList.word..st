api callouts
apiSuggest: aHandle sList: anEmptyList word: aString  
	<cdecl: long 'Hunspell_suggest' ( void* DTRHunspellSuggestList* char*) module:'libhunspell.dll'>
	^self externalCallFailed 