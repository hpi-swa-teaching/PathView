api callouts
apiDestroy: aHunspellHandle
	<cdecl: void 'Hunspell_destroy' (void*) module:'libhunspell.dll'>
	^self externalCallFailed 