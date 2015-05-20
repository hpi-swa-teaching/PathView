event handling
keyStroke: evt
	evt keyCharacter ~= Character escape ifTrue: [ ^self ].
	evt hand releaseMouseFocus: self.
	evt hand releaseKeyboardFocus: self.
	Cursor normal show.
	moved keysAndValuesDo: [ :m :b | m bounds: b ].
	transient ifTrue: [ ^self delete ].
	self resetClass.
	self reset.
	self hotspot: start.
