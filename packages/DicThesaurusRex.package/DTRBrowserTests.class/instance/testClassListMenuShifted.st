as yet unclassified
testClassListMenuShifted
	"Tests Browser>>#classListMenu:shifted:"
	| menu |
	menu := MenuMorph new defaultTarget: browser;
				 yourself.
	browser classListMenu: menu shifted: false.
	self
		assert: (menu items
				anySatisfy: [:submorph | submorph contents = 'check spelling'])