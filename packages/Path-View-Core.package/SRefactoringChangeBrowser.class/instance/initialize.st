initialization
initialize

	super initialize.
	undos := IdentityDictionary new.
	selectedRefactoring := 0.
	self
		setLabel: 'Refactoring Changes';
		buildList;
		buildCodePane;
		buildButtons.