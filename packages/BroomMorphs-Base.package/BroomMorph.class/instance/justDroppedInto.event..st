dropping/grabbing
justDroppedInto: aMorph event: anEvent
	super justDroppedInto: aMorph event: anEvent.
	aMorph isPlayfieldLike ifFalse: [ ^self delete ].
	self centered: anEvent hand lastEvent yellowButtonPressed.
	self transient ifFalse: [ ^self ].
		self reset.
		self hotspot: (start := anEvent position).
		anEvent hand mouseFocus: self.
		anEvent hand keyboardFocus: self.
		"Cursor blank show."