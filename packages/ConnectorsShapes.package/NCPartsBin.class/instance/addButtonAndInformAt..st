buttons
addButtonAndInformAt: evt
	| button afterButton |
	afterButton := submorphs
		detect: [ :ea | ea containsPoint: evt position ]
		ifNone: [ submorphs isEmpty ifTrue: [ ] ifFalse: [ submorphs last ] ].
	button := self class buttonClass new stationarySetup.
	button color: self color.
	self addMorph: button after: afterButton.
	PopUpMenu inform: 'Drop a Morph on the button.'