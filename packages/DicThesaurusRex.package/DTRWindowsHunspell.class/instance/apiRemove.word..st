api callouts
apiRemove: aHunspellHandle word: aString
	<cdecl: void 'Hunspell_remove' (void* char*) module: 'libhunspell.dll'>
	^ self externalCallFailed 