as yet unclassified
testMessageListMenuShifted
	"Tests Browser>>#messageListMenu:shifted:"
	| menu |
	menu := MenuMorph new defaultTarget: browser;
				 yourself.
	browser messageListMenu: menu shifted: false.
	self
		assert: (menu items
				anySatisfy: [:submorph | submorph contents = 'check spelling'])