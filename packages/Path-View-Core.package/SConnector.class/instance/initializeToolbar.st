initialization
initializeToolbar

	| buttons |
	buttons := self toolbarButtons.
	(buttons notNil and: [ buttons notEmpty ]) ifTrue: [
		toolbar := SDiagramMorphToolbar on: self.
		buttons do: [ :each |
			toolbar addButton: ((UiFugueIcons perform: each first) asMorph)
					model: self
					action: each second
					enabled: each fourth
					edge: each third
					tooltip: each fifth  ] ].