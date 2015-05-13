initialization
initWithContents: anObject prior: priorMorph forList: hostList indentLevel: newLevel

	super initWithContents: anObject prior: priorMorph forList: hostList indentLevel: newLevel.
	self 
		extent: self minWidth@self class itemHeight;
		isCodeExpanded: false;
		previousSibling: priorMorph.