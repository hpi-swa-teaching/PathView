initialization
initializeWith: aSelector in: aClass
	
	sourceCodeMorph := SSourceCodeMorph on: aSelector in: aClass.
	syntaxHighlightingLocked := false.
	super color: Color transparent. "Use super to avoid setting the color of sourceCodeMorph."
	self
		ensureLockSyntaxHighlighting; "Enable by default."
		addMorphFront: sourceCodeMorph;
		extent: sourceCodeMorph extent.