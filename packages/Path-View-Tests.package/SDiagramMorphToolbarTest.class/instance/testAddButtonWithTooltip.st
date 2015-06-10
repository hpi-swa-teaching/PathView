toolbar-tests
testAddButtonWithTooltip

	|  button withToolbar |
	withToolbar := SMorphWithToolbar new.
	button := #(#arrowStop090Icon #openAncestors #top #toolbarButtonAlwaysEnabled 'open ancestors').

	instance addButton: ((UiFugueIcons perform: button first) asMorph)
		model: withToolbar
		action: button second
		enabled: button fourth
		edge: button third
		tooltip: button fifth.

	self assert: instance topBar submorphs first balloonText = button fifth
	