api callouts
apiRemove: aHunspellHandle word: aString
	<cdecl: void 'Hunspell_remove' (void* char*) module: 'libhunspell-1.3.so.0'>
	^ self externalCallFailed 