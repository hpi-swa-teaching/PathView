menu
buildMenu: aMenu  

	| refactoringMenu |
	aMenu 
		add: 'Rename class' target: self selector: #renameClass;
		add: 'Delete class' target: self selector: #deleteClass.
		
	refactoringMenu := MenuMorph new.
	refactoringMenu
		add: 'Create accessors' target: self selector: #createAccessors;
		add: 'Add variable' target: self selector: #addVariable;
		add: 'Add method' target: self selector: #addMethod;
		add: 'Add category' target: self selector: #addCategory.
	aMenu add: 'more...' subMenu: refactoringMenu.