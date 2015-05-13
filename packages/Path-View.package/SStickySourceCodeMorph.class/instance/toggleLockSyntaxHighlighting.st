toolbar
toggleLockSyntaxHighlighting
	
	syntaxHighlightingLocked := syntaxHighlightingLocked not.
	syntaxHighlightingLocked
		ifTrue: [ sourceCodeMorph enableSyntaxHighlighting ]
		ifFalse: [ sourceCodeMorph disableSyntaxHighlighting ]