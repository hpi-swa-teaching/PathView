morphic
createObjectExplorerOn: anObject
	| listMorph |
	listMorph := (SObjectExplorer on: self codePane) explorerListMorphFor: anObject.
	self addMorph: listMorph.
	listMorph 
		borderWidth: 0;
		position: self position x @ (self position y + self class buttonWidth);
		extent: (self width - 1)@(self height - self class buttonWidth - 1).
