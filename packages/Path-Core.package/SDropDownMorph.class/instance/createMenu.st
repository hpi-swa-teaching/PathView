building
createMenu
	| entryMorphs |
	entryMorphs := self createMenuEntries.
	self menuMorph: (AlignmentMorph inAColumn: entryMorphs).
	self addMorph: self menuMorph.
	self menuMorph 
		borderWidth: 0;
		position: (self position x - 1) @ (self position y + self height - 1);
		hide.