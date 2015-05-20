menus
addYellowButtonMenuItemsTo: aCustomMenu event: evt 
	super addYellowButtonMenuItemsTo: aCustomMenu event: evt.
	self addDebugMenuItemsTo: aCustomMenu event: evt.
	self addGraphModelYellowButtonItemsTo: aCustomMenu event: evt.
	self addBasicMenuItemsTo: aCustomMenu event: evt.
	self addTextMenuItemsTo: aCustomMenu event: evt