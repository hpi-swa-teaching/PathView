toolbar
hasBeenUnhovered
	
	super hasBeenUnhovered.
	syntaxHighlightingLocked ifFalse: [ sourceCodeMorph disableSyntaxHighlighting ].