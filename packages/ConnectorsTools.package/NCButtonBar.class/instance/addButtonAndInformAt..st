menus
addButtonAndInformAt: evt
	| button afterButton |
	afterButton := submorphs
		detect: [ :ea | ea containsPoint: evt position ]
		ifNone: [ ^self addButtonAndInform ].
	button := self class buttonClass new.
	self addMorph: button after: afterButton.
	PopUpMenu inform: 'Drop a Morph on the button.'