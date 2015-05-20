menus
addModelYellowButtonItemsTo: aCustomMenu event: evt
	super addModelYellowButtonItemsTo: aCustomMenu event: evt.
	self addGraphModelYellowButtonItemsTo: aCustomMenu event: evt.
	^aCustomMenu