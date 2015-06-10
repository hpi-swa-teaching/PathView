menu
buildMenu: aMenu

	aMenu 
		add: 'Rename variable' target: self selector: #renameVariable;
		add: 'Create accessors' target: self selector: #createAccessors;
		add: 'Delete variable' target: self selector: #deleteVariable;
		add: 'Set variable type' target: self selector: # setClass