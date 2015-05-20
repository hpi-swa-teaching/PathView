event handling
mouseUp: evt 
	evt hand releaseMouseFocus: self.
	Cursor normal show.
	self rememberCommand: self undoCommand.
	transient ifTrue: [ ^self delete ].
	self resetClass.
	self reset.
	self hotspot: start.