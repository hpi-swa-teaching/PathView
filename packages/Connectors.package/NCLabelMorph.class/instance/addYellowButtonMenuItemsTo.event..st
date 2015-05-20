menus
addYellowButtonMenuItemsTo: aMenu event: evt
	aMenu
		add: 'delete' translated target: self selector: #dismissMorph;
		add: 'move' translated target: evt hand selector: #attachMorph: argument: self.

	super addYellowButtonMenuItemsTo: aMenu event: evt.
	aMenu
		addLine;
		add: 'font...' translated action: #promptForFont;
		addUpdating: #unlockOrLockTextPhrase action: #toggleTextLocked.
	label addFitAndWrapItemsTo: aMenu.
	label addAcceptMenuItemsTo: aMenu.