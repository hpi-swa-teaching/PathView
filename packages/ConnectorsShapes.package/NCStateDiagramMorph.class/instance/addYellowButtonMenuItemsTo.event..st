menus
addYellowButtonMenuItemsTo: aCustomMenu event: evt
	super addYellowButtonMenuItemsTo: aCustomMenu event: evt.
	^aCustomMenu addLine;
		add: 'become composite' translated action: #becomeComposite;
		add: 'become scrollable composite' translated action: #becomeScrollableComposite;
		yourself