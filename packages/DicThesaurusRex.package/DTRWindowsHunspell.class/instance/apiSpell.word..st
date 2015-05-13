api callouts
apiSpell: aHunspellHandle word: aString
	<cdecl: long 'Hunspell_spell' (void* char*) module:'libhunspell.dll'>
	^self externalCallFailed