menus
addYellowButtonMenuItemsTo: aMenu event: evt
	super addYellowButtonMenuItemsTo: aMenu event: evt.
	aMenu
		add: 'change margins' translated target: self selector: #changeMargins:.
