initialization
initializeWithClass: aClass andSelector: aSelector
	
	sourceCodeMorph := SSourceCodeMorph on: aSelector in: aClass.
	self
		color: Color transparent;
		addMorphFront: sourceCodeMorph;
		extent: sourceCodeMorph extent.