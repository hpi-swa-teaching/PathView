layout
layoutChanged
	self fixColor.
	submorphs isEmpty
		ifTrue: [ self privateBounds: (Rectangle center: self targetPoint extent: 10@10) ].
	super layoutChanged.
