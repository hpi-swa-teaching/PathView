api callouts
apiAdd: aHunspellHandle word: aString
	<cdecl: void 'Hunspell_add' (void* char*) module: 'libhunspell-1.3.so.0'>
	^ self externalCallFailed 