explore buttons
setExploreBackgroundAt: aNumber
	| background |
	background := RectangleMorph new.
	self addMorph: background.
	background
		color: Color white;
		borderWidth: 0;
		extent: (self class controlWidth - self class borderOffset)@
					self class buttonHeight;
		position: self getXPosForControlPanel@(aNumber + self class borderOffset).
