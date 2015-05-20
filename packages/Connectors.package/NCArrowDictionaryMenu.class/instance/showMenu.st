menu commands
showMenu
	"Show the receiver's menu"

	| aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTranslatedList: #(
		('remove'			removeEntry			'Remove this arrow from the dictionary')
		('rename'			renameEntry			'Rename this arrow')
		-
		('copy name'		copyName				'Copy the name of this graphic to the clipboard')
		-
		('find...'			findEntry				'Find an entry by name')).
	
	Smalltalk at: #NCGlyphEditor ifPresent: [ :ncge |
		aMenu
			addLine;
			add: 'make new arrow' translated target: self selector: #openGlyphEditor.
		aMenu balloonTextForLastItem: 'Open an Arrow editor' translated. 
	].

	aMenu popUpInWorld
