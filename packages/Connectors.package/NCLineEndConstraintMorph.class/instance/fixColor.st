layout
fixColor
	submorphs isEmpty
		ifFalse: [ self color: (Color r: 1.0 g: 0 b: 0 alpha: 0.2 )].
	super visible
		ifTrue: [ self color: Color red ].
