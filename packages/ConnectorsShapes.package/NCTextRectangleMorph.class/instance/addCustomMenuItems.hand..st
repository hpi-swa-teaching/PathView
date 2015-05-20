menus
addCustomMenuItems: aCustomMenu hand: aHandMorph
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	self addTextBlockMenuItemsTo: aCustomMenu event: aHandMorph lastEvent.
	^aCustomMenu