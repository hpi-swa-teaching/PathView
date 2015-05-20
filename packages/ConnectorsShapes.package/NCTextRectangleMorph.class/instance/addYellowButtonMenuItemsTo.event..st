menus
addYellowButtonMenuItemsTo: aCustomMenu event: evt

	super addYellowButtonMenuItemsTo: aCustomMenu event: evt.
	self addTextBlockMenuItemsTo: aCustomMenu event: evt.
	^aCustomMenu
