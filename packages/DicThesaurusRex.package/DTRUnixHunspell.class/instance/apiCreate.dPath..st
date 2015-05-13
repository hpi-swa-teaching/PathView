api callouts
apiCreate: anAffPath dPath: anDPath
	<cdecl: void* 'Hunspell_create' (char* char*) module: 'libhunspell-1.3.so.0'>
	^self externalCallFailed