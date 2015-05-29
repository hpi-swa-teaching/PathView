menu
menu
	| menu |
	menu := MenuMorph new.
	self buildMenu: menu.
	menu items
		ifNotEmpty: [menu invokeAt: ActiveHand position in: ActiveWorld allowKeyboard: true]
		ifEmpty: [self clicked].