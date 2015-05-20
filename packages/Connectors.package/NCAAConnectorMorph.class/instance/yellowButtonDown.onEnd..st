event handling
yellowButtonDown: evt onEnd: aConstraintOrNil 
	| aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTitle: self externalName.
	self addYellowButtonMenuItemsTo: aMenu event: evt.

	aConstraintOrNil ifNotNil: [ | subMenu |
		subMenu := MenuMorph new defaultTarget: aConstraintOrNil.
		aMenu addLine.
		aMenu add: 'end...' subMenu: subMenu.
		self addEndItemsFor: aConstraintOrNil to: aMenu event: evt.
		aConstraintOrNil addYellowButtonMenuItemsTo: subMenu event: evt.
			#('delete' 'resize' 'properties...' )
				do: [:ea | (subMenu itemWithWording: ea)
						ifNotNilDo: [:item | item target = aConstraintOrNil
								ifTrue: [item delete]]]
	].

	aMenu popUpInWorld: World