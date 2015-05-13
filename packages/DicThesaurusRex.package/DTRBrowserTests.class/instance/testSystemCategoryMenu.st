as yet unclassified
testSystemCategoryMenu
	"Tests Browser>>#systemCategoryMenu"
	| menu |
	menu := MenuMorph new defaultTarget: browser;
				 yourself.
	browser systemCategoryMenu: menu.
	self
		assert: (menu items
				anySatisfy: [:submorph | submorph contents = 'check spelling'])