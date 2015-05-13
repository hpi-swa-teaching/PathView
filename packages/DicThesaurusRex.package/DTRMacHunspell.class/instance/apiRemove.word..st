api callouts
apiRemove: aHunspellHandle word: aString
	aHunspellHandle 
		ifNotNil: [aHunspellHandle setIgnoredWords: (aHunspellHandle getIgnoredWords 
														reject: [:each | each = aString])].