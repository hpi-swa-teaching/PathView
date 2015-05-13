api callouts
apiSuggest: aHandle sList: anEmptyList word: aString  
	<cdecl: long 'Hunspell_suggest' ( void* DTRHunspellSuggestList* char*) module:'libhunspell-1.3.so.0'>
	^self externalCallFailed 