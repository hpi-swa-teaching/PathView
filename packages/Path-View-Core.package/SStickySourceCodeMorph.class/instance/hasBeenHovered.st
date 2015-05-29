toolbar
hasBeenHovered
	
	super hasBeenHovered.
	syntaxHighlightingLocked ifFalse: [ sourceCodeMorph enableSyntaxHighlighting ].