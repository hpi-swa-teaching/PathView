api callouts
apiAdd: aHunspellHandle word: aString
	<cdecl: void 'Hunspell_add' (void* char*) module: 'libhunspell.dll'>
	^ self externalCallFailed 