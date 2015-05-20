accessing
transform
	transform ifNil: [ transform := 
		(glyph transformForRect: (self editBox insetBy: 4) rotation: rotation)
	].
	^transform