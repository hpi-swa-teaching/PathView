as yet unclassified
testMessageCategoryMenu
	"Tests Browser>>#messageCategoryMenu"
	| menu |
	menu := MenuMorph new defaultTarget: browser;
				 yourself.
	browser messageCategoryMenu: menu.
	self
		assert: (menu items
				anySatisfy: [:submorph | submorph contents = 'check spelling'])