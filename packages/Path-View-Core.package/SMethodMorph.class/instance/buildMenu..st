menu
buildMenu: aMenu
	| refactoringMenu |
	aMenu
		add: 'Rename method' target: self selector: #renameMethod;
		add: 'Delete method' target: self selector: #deleteMethod.

	refactoringMenu := MenuMorph new.
	refactoringMenu
		add: 'Add parameter' target: self selector: #addParameter;
		add: 'Remove parameter' target: self selector: #removeParameter;
		add: 'Inline parameter' target: self selector: #inlineParameter.
	aMenu add: 'more...' subMenu: refactoringMenu.
