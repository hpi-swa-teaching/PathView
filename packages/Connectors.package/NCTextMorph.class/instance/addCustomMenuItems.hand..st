menus
addCustomMenuItems: aCustomMenu hand: aHandMorph 
	"Include our modest command set in the ctrl-menu"

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	self addAcceptMenuItemsTo: aCustomMenu