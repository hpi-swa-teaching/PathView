toolbar-actions
addNoteOrClass

	| menu |
	menu := MenuMorph new.
	menu
		add: 'add class' target: self selector: #addClass;
		add: 'add note' target:  self selector: #addNote.
		
	menu items
		ifNotEmpty: [menu invokeAt: ActiveHand position in: ActiveWorld allowKeyboard: true]
		ifEmpty: [self clicked].