menus
addYellowButtonMenuItemsTo: aMenu event: evt
	super addYellowButtonMenuItemsTo: aMenu event: evt.

	self addBasicMenuItemsTo: aMenu event: evt.

	self addBasicArrowMenuItemsTo: aMenu event: evt.
	^aMenu