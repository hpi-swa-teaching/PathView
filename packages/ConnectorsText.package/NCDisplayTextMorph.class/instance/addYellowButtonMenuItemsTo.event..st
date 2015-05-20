event handling
addYellowButtonMenuItemsTo: aCustomMenu event: evt 
	super addYellowButtonMenuItemsTo: aCustomMenu event: evt.
	self addBasicMenuItemsTo: aCustomMenu event: evt.
	self addCustomMenuItems: aCustomMenu hand: evt hand.
	self addTextMenuItemsTo: aCustomMenu event: evt